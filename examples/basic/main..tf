resource   "azurerm_resource_group"   "rg"   { 
   name   =   "rg-checkov" 
   location   =   "centralus" 
 } 

 resource   "azurerm_virtual_network"   "myvnet"   { 
   name   =   "checkov-vnet" 
   address_space   =   [ "10.0.0.0/16" ] 
   location   =   azurerm_resource_group.rg.location
   resource_group_name   =   azurerm_resource_group.rg.name 
 } 

 resource   "azurerm_subnet"   "frontendsubnet"   { 
   name   =   "checkovfrontendSubnet" 
   resource_group_name   =    azurerm_resource_group.rg.name 
   virtual_network_name   =   azurerm_virtual_network.myvnet.name 
   address_prefix   =   "10.0.1.0/24" 
 } 

 resource   "azurerm_public_ip"   "myvm1publicip"   { 
   name   =   "checkovpip1" 
   location   =   azurerm_resource_group.rg.location
   resource_group_name   =   azurerm_resource_group.rg.name 
   allocation_method   =   "Dynamic" 
   sku   =   "Basic" 
 } 
 resource   "azurerm_network_interface"   "myvm1nic"   { 
   name   =   "checkovmyvm1-nic" 
   location   =  azurerm_resource_group.rg.location
   resource_group_name   =   azurerm_resource_group.rg.name 

   ip_configuration   { 
     name   =   "ipconfig1" 
     subnet_id   =   azurerm_subnet.frontendsubnet.id 
     private_ip_address_allocation   =   "Dynamic" 
     public_ip_address_id   =   azurerm_public_ip.myvm1publicip.id
   } 
 }

 resource   "azurerm_windows_virtual_machine"   "example"   { 
   name                    =   "myvm1"   
   location                =  azurerm_resource_group.rg.location
   resource_group_name     =   azurerm_resource_group.rg.name 
   network_interface_ids   =   [ azurerm_network_interface.myvm1nic.id ] 
   size                    =   "Standard_B1s" 
   admin_username          =   "adminuser" 
   admin_password          =   "Password123!" 

   source_image_reference   { 
     publisher   =   "MicrosoftWindowsServer" 
     offer       =   "WindowsServer" 
     sku         =   "2019-Datacenter" 
     version     =   "latest" 
   } 

   os_disk   { 
     caching             =   "ReadWrite" 
     storage_account_type   =   "Standard_LRS" 
   } 
 } 