resource "azurerm_linux_function_app" "kc_lx_func_app" {
  builtin_logging_enabled    = false
  client_certificate_mode    = "Required"
  https_only                 = true
  location                   = var.global_location
  name                       = var.project_lx_func_app_name
  resource_group_name        = var.project_resource_group_name
  service_plan_id            = azurerm_service_plan.kcs-svc-plan.id
  storage_account_access_key = azurerm_storage_account.kcs-st.primary_access_key
  storage_account_name       = var.project_storage_account_name
  site_config {
    ftps_state = "FtpsOnly"
    application_stack {
      node_version = "16"
    }
    cors {
      allowed_origins = ["https://portal.azure.com"]
    }
  }
  depends_on = [
    azurerm_service_plan.kcs-svc-plan,
  ]
}