module "sa001" {
  source                      = "../modules"
  rg                          = "my-tf-rg1"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196a"
  providers = {
    azurerm = azurerm.sub01
  }
}
