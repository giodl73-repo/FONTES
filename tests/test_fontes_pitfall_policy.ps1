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
