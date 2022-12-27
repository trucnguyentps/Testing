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
  type        = string
  default     = ""
  description = "The name of the virtual network peering"
}

variable "remote_virtual_network_id" {
  type        = string
  default     = ""
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
variable "spoke_private_ip_name" {
  type        = string
  default     = ""
  description = "The name of the subnet."
}

variable "spoke_address_prefixes_private" {
  type        = list(string)
  default     = []
  description = "The address prefixes to use for the subnet."
}

###
# Azure virtual network
###
variable "vnet_spoke_name" {
  type        = string
  default     = ""
  description = "The name of the virtual network."
}

variable "vnet_address_space" {
  type        = list(string)
  default     = []
  description = "The address space that is used the virtual network."
}


