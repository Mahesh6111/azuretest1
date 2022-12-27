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
  subscription_id   = var.subscription01
  alias             = "sub01"
}

provider "azurerm" {
  features {}  
  subscription_id   = var.subscription02
  alias             = "sub02"
}
