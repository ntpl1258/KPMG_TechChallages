# Create Virtual Network

resource "azurerm_virtual_network" "Vnet" {
  name                = var.VnetName
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]

  tags = var.instance_tags
}