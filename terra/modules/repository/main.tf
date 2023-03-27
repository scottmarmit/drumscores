resource "github_repository" "this" {
  name        = var.repo_name
  description = "ABC Notation field drum scores."

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false
}

resource "github_branch_protection" "this" {
  repository_id  = resource.github_repository.this.node_id
  pattern        = "main"
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    restrict_dismissals        = true
    require_code_owner_reviews = true
  }
}
