variable members {
  default = [
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
  ]

  # add your username after the last user above.
  # keep a comma at the end of the line, like a good gopher :)
}

resource "github_membership" "members" {
  count    = "${length(var.members)}"
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
