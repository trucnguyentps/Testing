###
# Azure virtual network
###

resource "azurerm_virtual_network" "vnet_spoke" {
  name                = var.vnet_spoke_name
  location            = azurerm_resource_group.rg_vnet_spoke.location
  resource_group_name = azurerm_resource_group.rg_vnet_spoke.name
  address_space       = var.vnet_address_space
  tags                = var.tags
  depends_on = [
    azurerm_resource_group.rg_vnet_spoke
  ]
}
