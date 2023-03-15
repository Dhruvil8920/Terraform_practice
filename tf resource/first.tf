provider "github" {
  token = " ${var.token} "
}

resource "github_repository" "terraform-first" {
  name        = "${var.NameOfGitRepo}"
  visibility = "public"
}