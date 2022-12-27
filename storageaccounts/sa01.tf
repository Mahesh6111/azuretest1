provider "azurerm" {
  alias           = "sub01"
  subscription_id = "3db649d5-9162-430c-ba6d-afeacf2194ec"
  features {}
}

module "sa001" {
  source                      = "../modules"
  rg                          = "my-tf-rg1"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196-A"
  providers = {
    azurerm = azurerm.sub01
  }
}
