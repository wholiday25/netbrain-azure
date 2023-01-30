resource "azurerm_express_route_circuit" "express_route_circuit" {
  name                = var.express_route_circuit_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_provider_name = var.service_provider_name
  peering_location = var.peering_location
  bandwidth_in_mbps = var.bandwidth_in_mbps

  sku {
    tier = var.sku_tier
    family = var.sku_family
  }

  tags = var.tags
}

resource "azurerm_express_route_circuit_peerings" "express_route_circuit_peering" {
  name                      = "MicrosoftPeering"
  express_route_circuit_id = azurerm_express_route_circuit.express_route_circuit.id
  peer_asn                 = var.peer_asn
  primary_peer_address_prefix = var.primary_peer_address_prefix
  secondary_peer_address_prefix = var.secondary_peer_address_prefix
  vlan_id                  = var.vlan_id
}

resource "azurerm_subnet_network_security_group_association" "express_route_nsg_association" {
  subnet_id      = var.subnet_id
  network_security_group_id = var.network_security_group_id
}
