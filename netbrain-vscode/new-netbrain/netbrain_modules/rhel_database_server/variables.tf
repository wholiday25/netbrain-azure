variable "db_server_rg_name" {
  description = "The name of the resource group for the database server."
}

variable "db_server_name" {
  description = "The name of the database server."
}

variable "location" {
  description = "The location of the database server."
}

variable "network_interface_id" {
  description = "The ID of the network interface of the virtual network (VNet) to connect the database server to."
}

variable "db_server_vm_size" {
  description = "The size of the database server virtual machine."
}

variable "image_publisher" {
  description = "The publisher of the image to use for the database server."
}

variable "image_offer" {
  description = "The offer of the image to use for the database server."
}

variable "image_sku" {
  description = "The SKU of the image to use for the database server."
}

variable "image_version" {
  description = "The version of the image to use for the database server."
}

variable "admin_username" {
  description = "The administrator username for the database server."
}

variable "ssh_keys" {
  description = "The SSH keys to use for authentication to the database server."
}

variable "tags" {
  description = "Tags to assign to the database server."
}
