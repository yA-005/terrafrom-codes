# CREATE A RESOURCE GROUP

resource "azurerm_resource_group" "rg"{

    name = "myRG"
    location = "eastus2"

}

# CREATE A VIRTUAL NETWORK 

resource "azurerm_virtual_network" "vnet"{

    resource_group_name = azurerm_resource_group.rg.name
    name = "myVnet"
    address_space = ["50.0.0.0/16"]
    location = resource_group_name.rg.location

  # CHANGE OF VARIABLE NAME

  resource "azurerm_resource_group" "rg_number"{

    name = "myRG"
    location = "eastus2"

}

resource "azurerm_virtual_network" "vnet"{

    resource_group_name = azurerm_resource_group.rg_number.name
    name = "myVnet"
    address_space = ["50.0.0.0/16"]
    location = resource_group_name.rg_number.location


}
