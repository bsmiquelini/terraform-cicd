
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}
# Usando o modulo https://github.com/bsmiquelini/terraform-modules.git//modules/storage_account
module "storage_account" {
  source = "git::https://github.com/bsmiquelini/terraform-modules.git//modules/storage_account?ref=main"

  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  name                = var.storageName
  env                 = "Prod"
}

