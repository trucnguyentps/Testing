###
# Azure network peering
###

resource "azurerm_virtual_network_peering" "peering_spoke_to_hub" {
  name                      = var.peering_name
  resource_group_name       = azurerm_resource_group.rg_vnet_spoke.name
  virtual_network_name      = azurerm_virtual_network.vnet_spoke.name
  remote_virtual_network_id = var.remote_virtual_network_id
  allow_forwarded_traffic   = var.allow_forwarded_traffic
  allow_virtual_network_access = true
  allow_gateway_transit     = true
  use_remote_gateways       = false
}
