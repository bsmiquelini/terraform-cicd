terraform {
  #cloud {
  #  organization = "bmcent"
  #  workspaces {
  #    name = "TerraformCI"
  #  }
  #}
  required_providers {
    azurerm = {
      version = "4.7.0"
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  subscription_id                 = "80ea84e8-afce-4851-928a-9e2219724c69"
  resource_provider_registrations = "none"
  features {}

}

variable "storageName" {
  type        = string
  default     = "bsmiquelini"
  description = "Nome do storage Account"
}

variable "storageTier" {
  type        = string
  default     = "Standard"
  description = "Tipo do tier do storage"
}

resource "azurerm_resource_group" "rg" {
  name     = "811-0a40075a-provide-continuous-delivery-with-gith"
  location = "South Central US"
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storageName
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storageTier
  account_replication_type = "GRS"
}
