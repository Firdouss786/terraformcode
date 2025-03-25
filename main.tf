resource "azurerm_resource_group" "testrg"

{
name = "vmrg"
location = "East US"
}


resource "azurerm_virtual_network" "vnet"

{
name = "vmvnet"
resoure_group_name = azurerm_resource_group.testrg.name
location = azurerm_resource_group.testrg.location
address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet"
{

name = "vmsubnet"
resoure_group_name = azurerm_resource_group.testrg.name
location = azurerm_resource_group.testrg.location
virtual_network_name = azurerm_virtual_network.vnet.name
address_prefixes = ["10.0.1.0/24"]
 

}

