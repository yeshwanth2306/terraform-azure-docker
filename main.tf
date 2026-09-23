resource "azurerm_resource_group" "docker_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "docker_vnet" {
  name                = "docker-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.docker_rg.location
  resource_group_name = azurerm_resource_group.docker_rg.name
}

resource "azurerm_subnet" "docker_subnet" {
  name                 = "docker-subnet"
  resource_group_name  = azurerm_resource_group.docker_rg.name
  virtual_network_name = azurerm_virtual_network.docker_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
