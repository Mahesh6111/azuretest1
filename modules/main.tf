terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }

  }
}

provider "azurerm" {
  features {}
  client_id       = "96d017e9-894e-40d2-99bd-ad48cbe4ea51"
  client_secret   = "LZJ8Q~yPSeFQKq1MpUMpyhOBJ0nRFW5r5u7M_c0c"
  tenant_id       = "54227b23-8c19-44ca-8b05-48d4190f5ef5"
  subscription_id = var.subscription_id
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
