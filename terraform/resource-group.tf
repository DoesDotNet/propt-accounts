resource "azurerm_resource_group" "rg" {
  name     = format("%s-rg-ukso", local.name_prefix)
  location = "UK South"
}