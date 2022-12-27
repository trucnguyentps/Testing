###
# Azure network peering
###

resource "azurerm_virtual_network_peering" "peering_hub_to_spoke" {
  count                     = length(var.remote_virtual_network_id)
  name                      = "peering-to-${element(var.peering_name, count.index)}"
  resource_group_name       = azurerm_resource_group.rg_vnet_hub.name
  virtual_network_name      = azurerm_virtual_network.vnet_hub.name
  remote_virtual_network_id = element(var.remote_virtual_network_id, count.index)
  allow_forwarded_traffic   = var.allow_forwarded_traffic
  allow_virtual_network_access = true
  allow_gateway_transit     = true
  use_remote_gateways       = false
}
