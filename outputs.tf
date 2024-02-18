output "function_app_name" {
  value = azurerm_linux_function_app.kc_lx_func_app.name
  description = "Deployed function app name"
}

output "function_app_default_hostname" {
  value = azurerm_linux_function_app.kc_lx_func_app.default_hostname
  description = "Deployed function app hostname"
}