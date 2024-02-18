# Create a resource group
resource "azurerm_resource_group" "kcs-rg" {
  name     = var.project_resource_group_name
  location = var.global_location 
  tags = {
    "vertical": var.vertical
  }
}