resource "github_repository" "create_repo" {
  name        = var.github_repo
  description = "Repo created by terraform script"

  allow_merge_commit = true
  allow_squash_merge = true
  delete_branch_on_merge = true
  auto_init = true
  visibility = "private"
}

