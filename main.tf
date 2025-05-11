resource "azurerm_resource_group" "raju" {
  name     = "raju"
  location = "West Europe"
}

resource "azurerm_storage_account" "manu" {
    depends_on = [ azurerm_resource_group.raju ]
  name                     = "mannustac"
  resource_group_name      = azurerm_resource_group.raju.name
  location                 = "west Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}


