credentials "app.terraform.io" {
  token = ${{ secrets.TERRAFORM_CLOUD_TKN }}
}

terraform {
  backend "remote" {
    organization = "bmcent"

    workspaces {
      name = "TerraformCI"
    }
  }
}
