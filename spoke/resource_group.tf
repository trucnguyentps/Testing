###
# Azure resource group
###

resource "azurerm_resource_group" "rg_vnet_spoke" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.tags
}