###
# Azure hub
###

module "azure_hub" {
  source                  = "../../hub"
  resource_group_name     = var.resource_group_name_hub
  resource_group_location = var.resource_group_location_hub

  security_group_name  = var.security_group_name_hub
  security_group_rules = var.security_group_rules_hub

  peering_name              = [module.azure_spoke_1.name, module.azure_spoke_2.name]
  remote_virtual_network_id = [module.azure_spoke_1.id, module.azure_spoke_2.id]
  allow_forwarded_traffic   = var.allow_forwarded_traffic_hub

  hub_private_ip_name          = var.hub_private_ip_name
  hub_address_prefixes_private = var.hub_address_prefixes_private
  hub_public_ip_name           = var.hub_public_ip_name
  hub_address_prefixes_public  = var.hub_address_prefixes_public

  vnet_hub_name      = var.vnet_hub_name
  vnet_address_space = var.vnet_address_space_hub

  gateway_pip_name                               = var.gateway_pip_name
  allocation_method                              = var.allocation_method
  hub_vnet_gateway_name                          = var.hub_vnet_gateway_name
  type                                           = var.type
  vpn_type                                       = var.vpn_type
  sku                                            = var.sku
  ip_configuration_name                          = var.ip_configuration_name
  ip_configuration_private_ip_address_allocation = var.ip_configuration_private_ip_address_allocation

  tags = var.tags_hub
}
