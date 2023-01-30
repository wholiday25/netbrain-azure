output "app_server_id" {
  value = azurerm_windows_virtual_machine.app_server.id
}

output "app_server_rg_name" {
  value = azurerm_resource_group.app_server_rg.name
}

output "app_server_fqdn" {
  value = azurerm_windows_virtual_machine.app_server.fqdn
}
