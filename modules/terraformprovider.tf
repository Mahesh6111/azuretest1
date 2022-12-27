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
  
  subscription_id = "3db649d5-9162-430c-ba6d-afeacf2194ec"
  alias           = "sub01"
  
}
