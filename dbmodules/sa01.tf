provider "azurerm" {
  features {}
  subscription_id = "3db649d5-9162-430c-ba6d-afeacf2194ec"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

}

module "db01" {
  source                      = "../"
  rg                          = "my-tf-rg"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196"
}
