resource "azurerm_resource_group" "accounts" {
  name     = format("%s-rg-ukso", local.name_prefix)
  location = "UK South"
}