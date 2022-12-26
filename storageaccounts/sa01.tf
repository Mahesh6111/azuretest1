module "db01" {
  source                      = "../modules/"
  rg                          = "my-tf-rg"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196"
  subscription_id             = "d3b7888f-c26e-4961-a976-ff9d5b31dfd3"
}
