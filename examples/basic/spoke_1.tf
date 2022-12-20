###
# Azure spoke 1
###

module "azure_spoke_1" {
  source                  = "../../spoke"
  resource_group_name     = var.resource_group_name_1
  resource_group_location = var.resource_group_location_1

  security_group_name  = var.security_group_name_1
  security_group_rules = var.security_group_rules_1

  peering_name              = var.peering_name_1
  remote_virtual_network_id = module.azure_hub.id
  allow_forwarded_traffic   = var.allow_forwarded_traffic_1

  spoke_private_ip_name          = var.spoke_private_ip_name_1
  spoke_address_prefixes_private = var.spoke_address_prefixes_private_1

  vnet_spoke_name    = var.vnet_spoke_name_1
  vnet_address_space = var.vnet_address_space_1

  tags = var.tags
}
