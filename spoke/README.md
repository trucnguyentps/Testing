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
| [azurerm_network_security_group.nsg_spoke](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_rule.azurerm_nsr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_resource_group.rg_vnet_spoke](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.spoke_private_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet_spoke](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_peering.peering_spoke_to_hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_forwarded_traffic"></a> [allow\_forwarded\_traffic](#input\_allow\_forwarded\_traffic) | Controls if forwarded traffic from VMs in the remote virtual network is allowed. | `bool` | `false` | no |
| <a name="input_peering_name"></a> [peering\_name](#input\_peering\_name) | The name of the virtual network peering | `string` | `""` | no |
| <a name="input_remote_virtual_network_id"></a> [remote\_virtual\_network\_id](#input\_remote\_virtual\_network\_id) | The full Azure resource ID of the remote virtual network. | `string` | `""` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the network security group. | `string` | `""` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Specifies the name of the network security group. | `string` | `""` | no |
| <a name="input_security_group_rules"></a> [security\_group\_rules](#input\_security\_group\_rules) | n/a | <pre>list(object({<br>    name                       = string<br>    priority                   = string<br>    direction                  = string<br>    access                     = string<br>    protocol                   = string<br>    source_port_range          = string<br>    destination_port_range     = string<br>    source_address_prefix      = string<br>    destination_address_prefix = string<br>  }))</pre> | `[]` | no |
| <a name="input_spoke_address_prefixes_private"></a> [spoke\_address\_prefixes\_private](#input\_spoke\_address\_prefixes\_private) | The address prefixes to use for the subnet. | `list(string)` | `[]` | no |
| <a name="input_spoke_private_ip_name"></a> [spoke\_private\_ip\_name](#input\_spoke\_private\_ip\_name) | The name of the subnet. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | ## Azure Global ## | `map(any)` | `{}` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | The address space that is used the virtual network. | `list(string)` | `[]` | no |
| <a name="input_vnet_spoke_name"></a> [vnet\_spoke\_name](#input\_vnet\_spoke\_name) | The name of the virtual network. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The virtual NetworkConfiguration ID |
| <a name="output_name"></a> [name](#output\_name) | The virtual NetworkConfiguration ID |
