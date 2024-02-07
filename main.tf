resource "azurerm_resource_group" "shubhblock" {
  name     = "shubhrsg01"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
<<<<<<< HEAD
  for_each                 = var.storageacc00
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
=======
    for_each = var.storageacc00
  name                     =each.value.name
  resource_group_name      = "shubhrsg01"
  location                 = each.value.location
>>>>>>> feature/shubh00
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}