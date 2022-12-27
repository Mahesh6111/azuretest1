module "sa001" {
  source                      = "../modules"
  rg                          = "my-tf-rg1"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196b"
  subscription01              = "3db649d5-9162-430c-ba6d-afeacf2194ed"
}
