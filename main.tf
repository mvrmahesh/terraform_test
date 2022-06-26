provider "github" {
  token        = "${var.github_token}"
  owner = "${var.github_organization}"
  insecure = true
}

module "repository_creation"{
  source = "./modules/repo"

  github_repo = "${var.github_repo}"
}

module "github_team"{
  source = "./modules/github_teams"
}

