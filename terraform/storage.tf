resource "azurerm_storage_account" "accounts" {
  name                     = format("%ssaukso", local.storage_name_prefix)
  resource_group_name      = azurerm_resource_group.accounts.name
  location                 = azurerm_resource_group.accounts.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}