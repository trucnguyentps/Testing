# ###
# # Azure virtual network
# ###

# output "id" {
#   description = "The virtual NetworkConfiguration ID"
#   value       = azurerm_virtual_network.vnet_spoke.id
#   # value = tomap({
#   #   for key, data in azurerm_virtual_network.vnet_spoke.id : key => data.name
#   # })
# }