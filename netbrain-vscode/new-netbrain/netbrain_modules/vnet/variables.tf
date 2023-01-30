variable "vnet_name" {
  type = string
  default = "netbrain-vnet"
}

variable "subnet_names" {
  type = list(string)
  default = "netbrain-subnet"
}
