variable "express_route_circuit_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "service_provider_name" {
  type = string
}

variable "peering_location" {
  type = string
}

variable "bandwidth_in_mbps" {
  type = number
}

variable "sku_tier" {
  type = string
}

variable "sku_family" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "peer_asn" {
  type = number
}

variable "primary_peer_address_prefix" {
  type = string
}

variable "secondary_peer_address_prefix" {
  type = string
}

variable "vlan_id" {
  type = number
}

variable "subnet_id" {
  type = string
}

variable "network_security_group_id" {
  type = string
}
