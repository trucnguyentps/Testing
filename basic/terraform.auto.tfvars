###
# Azure hub
###

tags_hub = {
  ApplicationName = "hub and spoke"
  Approver        = ""
  BusinessUnit    = ""
  CostCenter      = ""
}

###
# Azure resource group
###

resource_group_name_hub     = "rg-vnet-hub"
resource_group_location_hub = "centralus"

###
# Azure network security group
###
security_group_name_hub = "nsg_hub"
security_group_rules_hub = [
  {
    name                       = "SweetSprings SQL"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "1433"
    source_address_prefix      = "67.221.222.224/28"
    destination_address_prefix = "10.0.60.0/24"
  }
]

###
# Azure network peering
###

peering_name_hub  = "peering-hub-to-spoke1"
peering_name_hub2 = "peering-hub-to-spoke2"
# remote_virtual_network_id_hub = ""
allow_forwarded_traffic_hub = "true"

###
# Azure subnet
###

## Private IP
hub_private_ip_name          = "hub_private_ip"
hub_address_prefixes_private = ["10.10.1.0/27"]

## Public IP
hub_public_ip_name          = "GatewaySubnet"
hub_address_prefixes_public = ["10.10.2.0/28"]

###
# Azure virtual network
###

vnet_hub_name          = "vnethub"
vnet_address_space_hub = ["10.10.0.0/18"]

###
# Azure virtual gateway
###

gateway_pip_name      = "hub_gateway_pip"
allocation_method     = "Dynamic"
hub_vnet_gateway_name = "hub_vnet_gateway"

type                                           = "Vpn"
vpn_type                                       = "RouteBased"
sku                                            = "VpnGw1"
ip_configuration_name                          = "ip_configuration_name"
ip_configuration_private_ip_address_allocation = "Dynamic"


###
# Azure spoke 1
###


tags = {
  ApplicationName = "spoke to hub"
  Approver        = ""
  BusinessUnit    = ""
  CostCenter      = ""
}


###
# Azure resource group
###

resource_group_name_1     = "rg-vnet-spoke"
resource_group_location_1 = "centralus"

###
# Azure network security group
###

security_group_name_1 = "nsg_spoke"
security_group_rules_1 = [
  {
    name                       = "SweetSprings SQL"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "1433"
    source_address_prefix      = "67.221.222.224/28"
    destination_address_prefix = "10.0.60.0/24"
  }
]

###
# Azure network peering
###

peering_name_1              = "peering-spoke-to-hub"
remote_virtual_network_id_1 = "/subscriptions/6619dc40-2592-432a-bc21-34fd5ab27664/resourceGroups/rg-vnet-spoke/providers/Microsoft.Network/virtualNetworks/vnetspoke"
allow_forwarded_traffic_1   = "true"

###
# Azure subnet
###

## Private IP
spoke_private_ip_name_1          = "spoke_private_ip"
spoke_address_prefixes_private_1 = ["10.9.1.0/27"]

###
# Azure virtual network
###

vnet_spoke_name_1    = "vnetspoke"
vnet_address_space_1 = ["10.9.0.0/18"]



###
# Azure spoke 2
###

###
# Azure resource group
###

resource_group_name_2     = "rg-vnet-spoke-2"
resource_group_location_2 = "centralus"

###
# Azure network security group
###

security_group_name_2 = "nsg_spoke_2"
security_group_rules_2 = [
  {
    name                       = "SweetSprings SQL2"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "1433"
    source_address_prefix      = "67.221.222.224/28"
    destination_address_prefix = "10.0.60.0/24"
  }
]

###
# Azure network peering
###

peering_name_2              = "peering-spoke-to-hub-2"
remote_virtual_network_id_2 = ""
allow_forwarded_traffic_2   = "true"

###
# Azure subnet
###

## Private IP
spoke_private_ip_name_2          = "spoke_private_ip_2"
spoke_address_prefixes_private_2 = ["10.8.1.0/27"]

###
# Azure virtual network
###

vnet_spoke_name_2    = "vnetspoke2"
vnet_address_space_2 = ["10.8.0.0/18"]
