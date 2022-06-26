
resource "github_team" "create_team" {
  name        = "developer_new"
  description = "team where developer is associated"
  privacy     = "closed"
}

resource "github_team_members" "some_team_members" {
  team_id  = github_team.create_team.id

  members {
    username = "radhumahe"
    role     = "maintainer"
  }

  members {
    username = "mahesh"
    role     = "member"
  }
}