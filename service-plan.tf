
resource "azurerm_service_plan" "kcs-svc-plan" {
  location            = var.global_location
  name                = var.project_service_account_name
  os_type             = "Linux"
  resource_group_name = var.project_resource_group_name
  sku_name            = "Y1"
  depends_on = [
    azurerm_resource_group.kcs-rg,
  ]
}