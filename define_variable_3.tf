variable "resource_group_name"{

    default = "myTFResourceGroup"

}

//TO USE THIS//

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team        = "DevOps"
  }
}

//TO APPLY CHANGES//

terraform apply

terraform apply -var "resource_group_name=myNewResourceGroupName"  //PASSING RESOURCE GROUP NAME FROM THE COMMAND LINE//
