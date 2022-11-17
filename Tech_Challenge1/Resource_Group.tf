# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.RGName
  location = var.location
}