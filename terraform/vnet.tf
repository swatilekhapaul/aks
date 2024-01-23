resource "azurerm_virtual_network" "main" {
  name                = "vnet-aks-01"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  tags = {
    env = local.env
  }
}