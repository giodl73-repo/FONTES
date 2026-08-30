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
