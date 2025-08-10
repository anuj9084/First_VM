  resource "azurerm_resource_group" "demo_rg" {
  name     = "anuj-rg"
  location = "East US"
}

resource "azurerm_virtual_network" "demo_vnet" {
  name                = "anuj_vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name
}

resource "azurerm_subnet" "demo_subnet" {
  name                 = "anuj_subnet"
  resource_group_name  = azurerm_resource_group.demo_rg.name
  virtual_network_name = azurerm_virtual_network.demo_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
