variable github_token {
  default = "token"
}

provider "github" {
  organization = "joinville-gophers"
  token        = "${var.github_token}"
}

resource "github_membership" "caarlos0" {
  username = "caarlos0"
  role     = "admin"
}

resource "github_membership" "tmatias" {
  username = "tmatias"
  role     = "admin"
}
