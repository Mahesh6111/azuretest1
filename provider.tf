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
  subscription_id = env.subscription_id
  client_id       = env.client_id
  client_secret   = env.client_secret
  tenant_id       = env.tenant_id

}
