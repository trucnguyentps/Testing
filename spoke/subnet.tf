###
# Azure subnet
###

resource "azurerm_subnet" "spoke_private_ip" {
  name                 = var.spoke_private_ip_name
  resource_group_name  = azurerm_resource_group.rg_vnet_spoke.name
  virtual_network_name = azurerm_virtual_network.vnet_spoke.name
  address_prefixes     = var.spoke_address_prefixes_private
}
