variable "app_server_rg_name" {
  type = string
  default = ""
  description = ""
}

variable "location" {
  type = string
  default = ""
  description = ""
}

variable "app_server_name" {
  type = string
  default = ""
  description = ""
}

variable "network_interface_id" {
  type = string
  default = ""
  description = ""
}

variable "app_server_vm_size" {
  type = string
  default = ""
  description = ""
}

variable "image_publisher" {
  type = string
  default = ""
  description = ""
}

variable "image_offer" {
  type = string
  default = ""
   description = ""
}

variable "image_sku" {
  type = string
  default = ""
   description = ""
}

variable "image_version" {
  type = string
  default = ""
   description = ""
}

variable "admin_username" {
  type = string
  default = ""
   description = ""
}

variable "admin_password" {
  type = string
  default = ""
   description = ""
}

variable "tags" {
  type = map
}
