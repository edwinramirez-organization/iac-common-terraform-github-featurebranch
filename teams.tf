/*resource "github_team" "some_team" {
  name        = "devops-team"
  description = "Some cool team"
  privacy     = "secret"
}*/


#resource "github_membership" "membership_for_some_user" {
#  username = "jthan24"
#  role     = "member"
#}


#resource "github_team_membership" "some_team_membership" {
#  team_id  = github_team.some_team.id
#  username = "jthan24"
#  role     = "member"
#}

#resource "github_team_repository" "some_team_repo" {
#  team_id    = github_team.some_team.id
#  repository = github_repository.example.name
#  permission = "maintain"
#}