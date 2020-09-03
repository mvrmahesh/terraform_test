provider "github" {
  version = "~> 2.2"
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
  insecure = true
}

resource "github_repository" "create_repo" {
  name        = "terraform_test"
  description = "Repo created by terraform script"

  default_branch = "master"
  allow_merge_commit = true
  allow_squash_merge = true
  delete_branch_on_merge = true

}

resource "github_team" "create_team" {
  name        = "developer"
  description = "team where developer is associated"
  privacy     = "closed"
}

resource "github_branch" "create_branch" {
  repository = "terraform_test"
  branch     = "develop"
}