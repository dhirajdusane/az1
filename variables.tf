variable "project_resource_group_name" {
  type = string
  default = "kcsrg240219"
}

variable "project_storage_account_name" {
  type = string
  default = "kcsst240219"
}

variable "project_service_account_name" {
  type = string
  default = "kcssvc240219"
}

variable "project_lx_func_app_name" {
  type = string
  default = "kcslxfunapp240219"
}

variable "global_location" {
  type = string
  default = "eastus"
}

variable "vertical" {
  type = string
  default = "vediccs"
}
