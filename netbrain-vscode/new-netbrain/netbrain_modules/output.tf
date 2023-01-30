output "vnet_id" {
  value = module.vnet.vnet_id
}

output "windows_app_server_ip" {
  value = module.windows_app_server.server_ip
}

output "rhel_database_server_ip" {
  value = module.rhel_database_server.server_ip
}

output "keyvault_uri" {
  value = module.keyvault.keyvault_uri
}