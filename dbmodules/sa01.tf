provider "azurerm" {
  features {}
  subscription_id = "3db649d5-9162-430c-ba6d-afeacf2194ec"
}

module "db01" {
  source                      = "../"
  rg                          = "my-tf-rg"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196"
}
