resource "azurerm_subnet_network_security_group_association" "app-association" {
  subnet_id                 = azurerm_subnet.app_subnet.id
  network_security_group_id = azurerm_network_security_group.app-nsg.id
}
resource "azurerm_subnet_network_security_group_association" "mid-association" {
  subnet_id                 = azurerm_subnet.db_subnet.id
  network_security_group_id = azurerm_network_security_group.mid-nsg.id
}
resource "azurerm_subnet_network_security_group_association" "db-association" {
  subnet_id                 = azurerm_subnet.middle_subnet.id
  network_security_group_id = azurerm_network_security_group.db-nsg.id
}