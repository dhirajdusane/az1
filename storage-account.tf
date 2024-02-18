
resource "azurerm_storage_account" "kcs-st" {
  account_kind                     = "Storage"
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  allow_nested_items_to_be_public  = false
  location                         = var.global_location
  name                             = var.project_storage_account_name
  resource_group_name              = var.project_resource_group_name
  depends_on = [
    azurerm_resource_group.kcs-rg,
  ]
}