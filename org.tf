locals {
  members = [
    "jhonmike",
    "rogerfernandes",
    "lorival",
    "raduq",
    "nilemarbarcelos",
    "t-bonatti",
    "B0go",
    "leandro-lugaresi",
    "diogonicoleti",
    "robertoduessmann",
    "paulosalum",
  ]

  # add your username after the last user above.
  # keep a comma at the end of the line, like a good gopher :)
}

resource "github_team" "gophers" {
  name        = "Gophers"
  description = "All Joinville Gophers"
}

resource "github_team_membership" "members" {
  count    = "${length(local.members)}"
  username = "${element(local.members, count.index)}"
  team_id  = "${github_team.gophers.id}"
  role     = "member"
}

resource "github_team_membership" "caarlos0" {
  username = "caarlos0"
  team_id  = "${github_team.gophers.id}"
  role     = "maintainer"
}

resource "github_team_membership" "tmatias" {
  username = "tmatias"
  team_id  = "${github_team.gophers.id}"
  role     = "maintainer"
}

resource "github_team_membership" "merencia" {
  username = "merencia"
  team_id  = "${github_team.gophers.id}"
  role     = "maintainer"
}

resource "github_membership" "members" {
  count    = "${length(local.members)}"
  username = "${element(local.members, count.index)}"
  role     = "member"
}

resource "github_membership" "caarlos0" {
  username = "caarlos0"
  role     = "admin"
}

resource "github_membership" "tmatias" {
  username = "tmatias"
  role     = "admin"
}

resource "github_membership" "merencia" {
  username = "merencia"
  role     = "admin"
}
