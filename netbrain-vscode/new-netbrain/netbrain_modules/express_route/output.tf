output "express_route_circuit_id" {
  value = azurerm_express_route_circuit.express_route_circuit.id
}

output "express_route_peering_id" {
  value = azurerm_express_route_circuit_peerings.express_route_circuit_peering.id
}

output "subnet_network_security_group_association_id" {
  value = azurerm_subnet_network_security_group_association.express_route_nsg_association.id
}
