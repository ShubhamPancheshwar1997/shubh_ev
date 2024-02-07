resource "azurerm_resource_group" "shubhblock" {
  name     = "shubhrsg01"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
    for_each = var.storageacc00
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}