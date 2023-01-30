variable "vnet_name" {
  type = string
  default = ""
}

variable "subnet_names" {
  type = list(string)
  default = ""
}

variable "express_route_id" {
  type = string
  default = ""
}

variable "windows_app_server_name" {
  type = string
  default = ""
}

variable "rhel_database_server_name" {
  type = string
  default = ""
}

variable "keyvault_name" {
  type = string
  default = ""
}