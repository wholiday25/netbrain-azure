output "public_ip" {
  value = azurerm_public_ip.this.ip_address
}

output "private_ip" {
  value = azurerm_network_interface.this.private_ip_address
}

output "ssh_fingerprint" {
  value = azurerm_network_interface.this.os_profile_ssh_key.key_data
}

output "storage_account_name" {
  value = azurerm_storage_account.this.name
}

output "disk_size" {
  value = azurerm_managed_disk.this.disk_size_gb
}
