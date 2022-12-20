###
# Azure spoke 1
###

module "azure_spoke_2" {
  source                  = "../../spoke"
  resource_group_name     = var.resource_group_name_2
  resource_group_location = var.resource_group_location_2

  security_group_name  = var.security_group_name_2
  security_group_rules = var.security_group_rules_2

  peering_name              = var.peering_name_2
  remote_virtual_network_id = module.azure_hub.id
  allow_forwarded_traffic   = var.allow_forwarded_traffic_2

  spoke_private_ip_name          = var.spoke_private_ip_name_2
  spoke_address_prefixes_private = var.spoke_address_prefixes_private_2

  vnet_spoke_name    = var.vnet_spoke_name_2
  vnet_address_space = var.vnet_address_space_2

  tags = var.tags
}
