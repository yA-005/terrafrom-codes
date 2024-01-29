output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}


//NEXT STEP//

terraform apply
terraform output resource_group_id
