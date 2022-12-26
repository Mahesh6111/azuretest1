terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3db649d5-9162-430c-ba6d-afeacf2194ec"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

}
