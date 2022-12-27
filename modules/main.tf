resource "azurerm_resource_group" "tf-rg" {
  name     = var.rg
  location = var.location
}

resource "azurerm_storage_account" "my-tf-sa1" {
  name                     = var.storagename
  resource_group_name      = azurerm_resource_group.tf-rg.name
  location                 = azurerm_resource_group.tf-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  provider                  = azurerm.sub01
  tags = {
    environment = "staging"
  }
}
