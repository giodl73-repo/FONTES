Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Invoke-RepoSearch {
  param(
    [string]$Pattern,
    [string[]]$Paths
  )

  & rg -n $Pattern @Paths | Out-Null
  if ($LASTEXITCODE -ne 0) {
    throw "Expected policy text was not found for pattern: $Pattern"
  }
}

$BoundaryManifest = Get-Content "docs\source-boundaries.v1.json" -Raw | ConvertFrom-Json
if ($BoundaryManifest.schema -ne "fontes.source-boundaries.v1") {
  throw "Unexpected source boundary schema: $($BoundaryManifest.schema)"
}
if ($BoundaryManifest.owner_repo -ne "FONTES") {
  throw "Unexpected source boundary owner: $($BoundaryManifest.owner_repo)"
}
if ($BoundaryManifest.authority.claim_correctness -ne "owning downstream knowledge repositories") {
  throw "Source identity must not own downstream claim correctness"
}
if ($BoundaryManifest.authority.package_readiness -ne "owning publisher or consumer repositories") {
  throw "FONTES must not own package readiness"
}

function Get-Boundary {
  param([string]$PitfallId)

  $Boundary = @($BoundaryManifest.boundaries | Where-Object { $_.pitfall_id -eq $PitfallId })
  if ($Boundary.Count -ne 1) {
    throw "Expected one boundary for $PitfallId, found $($Boundary.Count)"
  }
  $Boundary[0]
}

$OnlineBoundary = Get-Boundary "FONTES-PF-01"
if ($OnlineBoundary.boundary -ne "online_visibility_not_mirroring_permission") {
  throw "FONTES-PF-01 boundary must keep visibility separate from mirroring permission"
}
if (-not (@($OnlineBoundary.required_before_transfer) -contains "resource-level rights posture")) {
  throw "FONTES-PF-01 must require resource-level rights posture before transfer"
}
if (-not (@($OnlineBoundary.blocked_claims) -contains "visible URL permits mirroring")) {
  throw "FONTES-PF-01 must block visible URL as mirroring permission"
}

$CitationBoundary = Get-Boundary "FONTES-PF-03"
if ($CitationBoundary.boundary -ne "source_identity_not_citation_authority") {
  throw "FONTES-PF-03 boundary must keep source identity separate from citation authority"
}
if (-not (@($CitationBoundary.owned_elsewhere) -contains "MAXIM authored claims")) {
  throw "FONTES-PF-03 must route authored claims to downstream repos"
}
if (-not (@($CitationBoundary.blocked_claims) -contains "source row proves claim correctness")) {
  throw "FONTES-PF-03 must block source rows as claim correctness"
}

$PublisherBoundary = Get-Boundary "FONTES-PF-04"
if ($PublisherBoundary.boundary -ne "publisher_artifact_not_rights_clearance") {
  throw "FONTES-PF-04 boundary must keep publisher artifacts separate from rights clearance"
}
if (-not (@($PublisherBoundary.artifact_must_repeat) -contains "downstream readiness")) {
  throw "FONTES-PF-04 must require downstream readiness status in artifacts"
}
if (-not (@($PublisherBoundary.blocked_claims) -contains "FLETCH registry row is redistribution approval")) {
  throw "FONTES-PF-04 must block FLETCH registry rows as redistribution approval"
}

# Checks FONTES-PF-01: online visibility must not become mirroring permission.
Invoke-RepoSearch "No blind mirroring|metadata-only|derived_text_allowed" @(
  "README.md",
  "PRODUCT_PLAN.md",
  "sources"
)

# Checks FONTES-PF-02: source and registry surfaces must keep fetch policy explicit.
Invoke-RepoSearch "fetch_policy" @(
  "sources",
  ".fletch\registries"
)

# Checks FONTES-PF-02: every FLETCH registry row with fetch behavior must carry
# row-level license metadata, so cache policy cannot be read without rights state.
$RegistryFiles = Get-ChildItem ".fletch\registries" -File -Filter "*.json"
$SawMetadataOnly = $false
$SawLicenseReview = $false
foreach ($RegistryFile in $RegistryFiles) {
  $Registry = Get-Content $RegistryFile.FullName -Raw | ConvertFrom-Json
  foreach ($Entry in $Registry.fletches) {
    $MetadataProperties = $Entry.metadata.PSObject.Properties.Name
    if (-not ($MetadataProperties -contains "fetch_policy")) {
      throw "Missing metadata.fetch_policy for registry row $($Entry.id) in $($RegistryFile.Name)"
    }
    if (-not ($MetadataProperties -contains "license")) {
      throw "Missing metadata.license for registry row $($Entry.id) in $($RegistryFile.Name)"
    }
    if ([string]::IsNullOrWhiteSpace($Entry.metadata.license)) {
      throw "Blank metadata.license for registry row $($Entry.id) in $($RegistryFile.Name)"
    }
    if ($Entry.metadata.fetch_policy -eq "metadata_only") {
      $SawMetadataOnly = $true
    }
    if ($Entry.metadata.fetch_policy -eq "license_review") {
      $SawLicenseReview = $true
    }
  }
}
if (-not $SawMetadataOnly) {
  throw "Expected at least one metadata_only registry row for policy coverage"
}
if (-not $SawLicenseReview) {
  throw "Expected at least one license_review registry row for policy coverage"
}

# Checks FONTES-PF-03: source identity must stay separate from downstream claims.
Invoke-RepoSearch "source identity|not as generated prose|not ad hoc source prose" @(
  "README.md",
  "PRODUCT_PLAN.md",
  ".proof"
)

# Checks FONTES-PF-04: publisher-facing records must preserve non-ready states.
Invoke-RepoSearch "blocked-rights|metadata-only|pending-inventory|cannot contribute extracted text chunks" @(
  ".proof",
  "sources",
  "context"
)

# Checks role coverage for PITFALL ownership: source custody, fetch policy,
# publisher artifacts, citation authority, and downstream consumer boundaries
# need concrete repo-local reviewers.
Invoke-RepoSearch "Source Custody Reviewer|Fetch Policy Reviewer|Publisher Artifact Reviewer|Citation Authority Reviewer|Consumer Boundary Reviewer" @(
  ".roles"
)
