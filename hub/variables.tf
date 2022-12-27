###
# Azure Global
###
variable "tags" {
  type        = map(any)
  default     = {}
  description = ""
}

###
# Azure resource group
###
variable "resource_group_name" {
  type        = string
  default     = ""
  description = " The name of the resource group in which to create the network security group."
}

variable "resource_group_location" {
  type        = string
  default     = ""
  description = "Specifies the supported Azure location where the resource exists."
}

###
# Azure network security group
###
variable "security_group_name" {
  type        = string
  default     = ""
  description = "Specifies the name of the network security group."
}

variable "security_group_rules" {
  type = list(object({
    name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = []
}

###
# Azure network peering
###
variable "peering_name" {
  # type        = string
  # default     = ""
  description = "The name of the virtual network peering"
}

variable "remote_virtual_network_id" {

  # default     = ""
  description = "The full Azure resource ID of the remote virtual network."
}

variable "allow_forwarded_traffic" {
  type        = bool
  default     = false
  description = "Controls if forwarded traffic from VMs in the remote virtual network is allowed."
}

###
# Azure subnet
###
variable "hub_private_ip_name" {
  type        = string
  default     = ""
  description = "The name of the subnet."
}

variable "hub_public_ip_name" {
  type        = string
  default     = ""
  description = "The name of the subnet."
}

variable "hub_address_prefixes_private" {
  type        = list(string)
  default     = []
  description = "The address prefixes to use for the subnet."
}

variable "hub_address_prefixes_public" {
  type        = list(string)
  default     = []
  description = "The address prefixes to use for the subnet."
}

###
# Azure virtual network
###
variable "vnet_hub_name" {
  type        = string
  default     = ""
  description = "The name of the virtual network."
}

variable "vnet_address_space" {
  type        = list(string)
  default     = []
  description = "The address space that is used the virtual network."
}

###
# Azure virtual gateway
###
variable "gateway_pip_name" {
  type        = string
  default     = ""
  description = "Specifies the name of the Public IP."
}

variable "allocation_method" {
  type        = string
  default     = ""
  description = "Defines the allocation method for this IP address."
}

variable "hub_vnet_gateway_name" {
  type        = string
  default     = ""
  description = "The name of the Virtual Network Gateway."
}

variable "type" {
  type        = string
  default     = ""
  description = "The type of the Virtual Network Gateway."
}

variable "vpn_type" {
  type        = string
  default     = ""
  description = "The routing type of the Virtual Network Gateway."
}

variable "sku" {
  type        = string
  default     = ""
  description = "Configuration of the size and capacity of the virtual network gateway."
}

variable "ip_configuration_name" {
  type        = string
  default     = ""
  description = "The name of the Virtual Network Gateway."
}

variable "ip_configuration_private_ip_address_allocation" {
  type        = string
  default     = ""
  description = "Defines how the private IP address of the gateways virtual interface is assigned."
}


