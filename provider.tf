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
  subscription_id = local.subscription_id
  client_id       = local.client_id
  client_secret   = local.client_secret
  tenant_id       = local.tenant_id

}
