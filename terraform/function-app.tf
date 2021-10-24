resource "azurerm_app_service_plan" "accounts" {
  name                = format("%s-asp-ukso", local.name_prefix)
  location            = azurerm_resource_group.accounts.location
  resource_group_name = azurerm_resource_group.accounts.name

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "accounts" {
  name                       = format("%s-fa-ukso", local.name_prefix)
  location                   = azurerm_resource_group.accounts.location
  resource_group_name        = azurerm_resource_group.accounts.name
  app_service_plan_id        = azurerm_app_service_plan.accounts.id
  storage_account_name       = azurerm_storage_account.accounts.name
  storage_account_access_key = azurerm_storage_account.accounts.primary_access_key
}