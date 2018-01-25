variable github_token {
  default = "token"
}

variable members {
  default = []
}

provider "github" {
  organization = "joinville-gophers"
  token        = "${var.github_token}"
}

resource "github_membership" "members" {
  count      = "${length(var.members)}"
  username = "${element(var.members, count.index)}"
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

