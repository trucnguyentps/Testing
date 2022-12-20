###
# Azure subnet
###

resource "azurerm_subnet" "hub_private_ip" {
  name                 = var.hub_private_ip_name
  resource_group_name  = azurerm_resource_group.rg_vnet_hub.name
  virtual_network_name = azurerm_virtual_network.vnet_hub.name
  address_prefixes     = var.hub_address_prefixes_private
}
resource "azurerm_subnet" "hub_public_ip" {
  name                 = var.hub_public_ip_name
  resource_group_name  = azurerm_resource_group.rg_vnet_hub.name
  virtual_network_name = azurerm_virtual_network.vnet_hub.name
  address_prefixes     = var.hub_address_prefixes_public
}