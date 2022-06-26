provider "github" {
  token        = "${var.github_token}"
  owner = "${var.github_organization}"
  insecure = true
}

resource "github_repository" "create_repo_new" {
  name        = "${var.github_repo_new}"
  description = "Repo created by terraform script1"

  allow_merge_commit = true
  allow_squash_merge = true
  delete_branch_on_merge = true
  auto_init = true
  visibility = "private"
}

module "repository_creation"{
  source = "./modules/repo"

  github_repo = "${var.github_repo}"
}

module "github_team"{
  source = "./modules/github_teams"
}

