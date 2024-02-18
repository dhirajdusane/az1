# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id_guid 
  tenant_id = var.tenant_id_guid
}



## Create a virtual network within the resource group
#resource "azurerm_virtual_network" "example" {
#  name                = "example-network"
#  resource_group_name = azurerm_resource_group.example.name
#  location            = azurerm_resource_group.example.location
#  address_space       = ["10.0.0.0/16"]
#}