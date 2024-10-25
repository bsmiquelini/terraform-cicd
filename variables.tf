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
