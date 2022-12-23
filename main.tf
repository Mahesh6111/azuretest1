resource "azurerm_resource_group" "tf-rg" {
  name     = "my-tf-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "my-tf-sa" {
  name                     = "storageaccountname1"
  resource_group_name      = azurerm_resource_group.tf-rg.name
  location                 = azurerm_resource_group.tf-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
