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


resource "azurerm_resource_group" "tf-rg" {
  name     = var.rg
  location = var.location
}

resource "azurerm_storage_account" "my-tf-sa1" {
  name                     = var.storagename
  resource_group_name      = azurerm_resource_group.tf-rg.name
  location                 = azurerm_resource_group.tf-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
