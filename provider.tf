terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3db649d5-9162-430c-ba6d-afeacf2194ec"
  client_id       = "96d017e9-894e-40d2-99bd-ad48cbe4ea51"
  client_secret   = "LZJ8Q~yPSeFQKq1MpUMpyhOBJ0nRFW5r5u7M_c0c"
  tenant_id       = "54227b23-8c19-44ca-8b05-48d4190f5ef5"

}
