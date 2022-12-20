###
# Azure virtual gateway
###

resource "azurerm_public_ip" "hub_vpn_gateway_pip" {
  name                = var.gateway_pip_name
  location            = azurerm_resource_group.rg_vnet_hub.location
  resource_group_name = azurerm_resource_group.rg_vnet_hub.name
  allocation_method   = var.allocation_method
}

resource "azurerm_virtual_network_gateway" "hub_vnet_gateway" {
  name                = var.hub_vnet_gateway_name
  location            = azurerm_resource_group.rg_vnet_hub.location
  resource_group_name = azurerm_resource_group.rg_vnet_hub.name

  type     = var.type
  vpn_type = var.vpn_type

  active_active = false
  enable_bgp    = false
  sku           = var.sku

  ip_configuration {
    name                          = var.ip_configuration_name
    public_ip_address_id          = azurerm_public_ip.hub_vpn_gateway_pip.id
    private_ip_address_allocation = var.ip_configuration_private_ip_address_allocation
    subnet_id                     = azurerm_subnet.hub_public_ip.id
  }
  depends_on = [
    azurerm_public_ip.hub_vpn_gateway_pip,
    azurerm_subnet.hub_public_ip
  ]
}