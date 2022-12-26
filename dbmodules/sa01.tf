module "db01" {
  source                      = ".."
  rg                          = "my-tf-rg"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196"
}
