# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id = var.client_id
  tenant_id = var.tenent_id
  client_secret = var.client_secret
}