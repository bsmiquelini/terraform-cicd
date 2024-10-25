terraform {
  backend "remote" {
    organization = "bmcent"

    workspaces {
      name = "TerraformCI"
    }
  }
}
