resource "azurerm_network_interface" "nic" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ip_configuration1"
    subnet_id                     = azurerm_subnet.middle_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

