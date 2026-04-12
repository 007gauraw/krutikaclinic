terraform {
  backend "remote" {
    organization = "krutikaclinic"

    workspaces {
      name = "example-workspace"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
