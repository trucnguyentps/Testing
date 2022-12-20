###
# Azure network security group
###

resource "azurerm_network_security_group" "nsg_spoke" {
  name                = var.security_group_name
  location            = azurerm_resource_group.rg_vnet_spoke.location
  resource_group_name = azurerm_resource_group.rg_vnet_spoke.name

  tags = var.tags
}

resource "azurerm_network_security_rule" "azurerm_nsr" {

  count                       = length(var.security_group_rules) > 0 ? length(var.security_group_rules) : 0
  name                        = var.security_group_rules[count.index].name
  priority                    = var.security_group_rules[count.index].priority
  direction                   = var.security_group_rules[count.index].direction
  access                      = var.security_group_rules[count.index].access
  protocol                    = var.security_group_rules[count.index].protocol
  source_port_range           = var.security_group_rules[count.index].source_port_range
  destination_port_range      = var.security_group_rules[count.index].destination_port_range
  source_address_prefix       = var.security_group_rules[count.index].source_address_prefix
  destination_address_prefix  = var.security_group_rules[count.index].destination_address_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg_spoke.name
}
