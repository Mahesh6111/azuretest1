module "sa001" {
  source                      = "../modules"
  rg                          = "my-tf-rg1"
  location                    = "westeurope"
  storagename                 = "myterraformsa61196-A"
  subscription_id             = "d3b7888f-c26e-4961-a976-ff9d5b31dfd3"
  client_id       = "96d017e9-894e-40d2-99bd-ad48cbe4ea51"
  client_secret   = "LZJ8Q~yPSeFQKq1MpUMpyhOBJ0nRFW5r5u7M_c0c"
  tenant_id       = "54227b23-8c19-44ca-8b05-48d4190f5ef5"
}
