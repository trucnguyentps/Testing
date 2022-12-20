###
# Azure virtual network
###

output "id" {
  description = "The virtual NetworkConfiguration ID"
  value       = azurerm_virtual_network.vnet_hub.id
}

output "name" {
  description = "The virtual NetworkConfiguration ID"
  value       = azurerm_virtual_network.vnet_hub.name
}