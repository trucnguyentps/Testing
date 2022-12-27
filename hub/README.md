## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.nsg_hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_rule.azurerm_nsr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_public_ip.hub_vpn_gateway_pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg_vnet_hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.hub_private_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.hub_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet_hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_gateway.hub_vnet_gateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway) | resource |
| [azurerm_virtual_network_peering.peering_hub_to_spoke](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | Defines the allocation method for this IP address. | `string` | `""` | no |
| <a name="input_allow_forwarded_traffic"></a> [allow\_forwarded\_traffic](#input\_allow\_forwarded\_traffic) | Controls if forwarded traffic from VMs in the remote virtual network is allowed. | `bool` | `false` | no |
| <a name="input_gateway_pip_name"></a> [gateway\_pip\_name](#input\_gateway\_pip\_name) | Specifies the name of the Public IP. | `string` | `""` | no |
| <a name="input_hub_address_prefixes_private"></a> [hub\_address\_prefixes\_private](#input\_hub\_address\_prefixes\_private) | The address prefixes to use for the subnet. | `list(string)` | `[]` | no |
| <a name="input_hub_address_prefixes_public"></a> [hub\_address\_prefixes\_public](#input\_hub\_address\_prefixes\_public) | The address prefixes to use for the subnet. | `list(string)` | `[]` | no |
| <a name="input_hub_private_ip_name"></a> [hub\_private\_ip\_name](#input\_hub\_private\_ip\_name) | The name of the subnet. | `string` | `""` | no |
| <a name="input_hub_public_ip_name"></a> [hub\_public\_ip\_name](#input\_hub\_public\_ip\_name) | The name of the subnet. | `string` | `""` | no |
| <a name="input_hub_vnet_gateway_name"></a> [hub\_vnet\_gateway\_name](#input\_hub\_vnet\_gateway\_name) | The name of the Virtual Network Gateway. | `string` | `""` | no |
| <a name="input_ip_configuration_name"></a> [ip\_configuration\_name](#input\_ip\_configuration\_name) | The name of the Virtual Network Gateway. | `string` | `""` | no |
| <a name="input_ip_configuration_private_ip_address_allocation"></a> [ip\_configuration\_private\_ip\_address\_allocation](#input\_ip\_configuration\_private\_ip\_address\_allocation) | Defines how the private IP address of the gateways virtual interface is assigned. | `string` | `""` | no |
| <a name="input_peering_name"></a> [peering\_name](#input\_peering\_name) | The name of the virtual network peering | `any` | n/a | yes |
| <a name="input_remote_virtual_network_id"></a> [remote\_virtual\_network\_id](#input\_remote\_virtual\_network\_id) | The full Azure resource ID of the remote virtual network. | `any` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the network security group. | `string` | `""` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Specifies the name of the network security group. | `string` | `""` | no |
| <a name="input_security_group_rules"></a> [security\_group\_rules](#input\_security\_group\_rules) | n/a | <pre>list(object({<br>    name                       = string<br>    priority                   = string<br>    direction                  = string<br>    access                     = string<br>    protocol                   = string<br>    source_port_range          = string<br>    destination_port_range     = string<br>    source_address_prefix      = string<br>    destination_address_prefix = string<br>  }))</pre> | `[]` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | Configuration of the size and capacity of the virtual network gateway. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | ## Azure Global ## | `map(any)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the Virtual Network Gateway. | `string` | `""` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | The address space that is used the virtual network. | `list(string)` | `[]` | no |
| <a name="input_vnet_hub_name"></a> [vnet\_hub\_name](#input\_vnet\_hub\_name) | The name of the virtual network. | `string` | `""` | no |
| <a name="input_vpn_type"></a> [vpn\_type](#input\_vpn\_type) | The routing type of the Virtual Network Gateway. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The virtual NetworkConfiguration ID |
| <a name="output_name"></a> [name](#output\_name) | The virtual NetworkConfiguration ID |
