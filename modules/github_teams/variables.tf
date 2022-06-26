variable "github_teams" {
  description = "Github teams"
  type        = list(string)
  default     = ["dev", "qa", "prod"]
}