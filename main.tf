resource "azurerm_resource_group" "example" {
  name     = "rg-${var.env_name}"
  location = "East US"
}
