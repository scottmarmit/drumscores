# Configure the GitHub provider
provider "github" {
  token = var.github_token
  owner = "smarmit"
}

# Create the repository
data "github_repository" "this" {
  full_name = "smarmit/drumscores"
}

# Configure branch protection for the main branch
resource "github_branch_protection" "this" {
  repository_id  = data.github_repository.this.node_id
  pattern        = "main"
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    restrict_dismissals        = true
    require_code_owner_reviews = true
  }
}
