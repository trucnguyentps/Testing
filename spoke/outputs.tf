###
# Azure virtual network
###

output "id" {
  description = "The virtual NetworkConfiguration ID"
  value       = azurerm_virtual_network.vnet_spoke.id
}

output "name" {
  description = "The virtual NetworkConfiguration ID"
  value       = azurerm_virtual_network.vnet_spoke.name
}