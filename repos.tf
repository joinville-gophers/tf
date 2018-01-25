resource "github_repository" "tf" {
  name        = "tf"
  description = "Terraform resources to manage the organization"

  homepage_url = "https://www.meetup.com/Joinville-Go-Meetup/"
  has_issues   = true
  has_wiki     = false
}

resource "github_branch_protection" "tf_master" {
  repository = "tf"
  branch     = "master"

  restrictions = {
    users = [
      "caarlos0",
    ]
  }

  required_pull_request_reviews = {
    dismiss_stale_reviews       = true
  }
}

resource "github_repository" "cfp" {
  name        = "cfp"
  description = "Call for papers repository"

  homepage_url = "https://www.meetup.com/Joinville-Go-Meetup/"
  has_issues   = true
  has_wiki     = false
}

resource "github_repository" "discussions" {
  name        = "discussions"
  description = "Discussions about anything related to our community"

  homepage_url = "https://www.meetup.com/Joinville-Go-Meetup/"
  has_issues   = true
  has_wiki     = false
  auto_init    = true
}
