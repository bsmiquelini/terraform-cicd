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
  subscription_id                 = var.subscription_id
  resource_provider_registrations = "none"
  features {}

}


variable "rg_name" {
  type        = string
  description = "Nome do Resource Group"
}

variable "location" {
  type        = string
  description = "Local do Resource Group"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID"
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
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storageName
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storageTier
  account_replication_type = "GRS"
}
