provider "azurerm" {
  version = "3.33.0"
}

resource "azurerm_resource_group" "app_server_rg" {
  name     = var.app_server_rg_name
  location = var.location
}

resource "azurerm_windows_virtual_machine" "app_server" {
  name                  = var.app_server_name
  resource_group_name   = azurerm_resource_group.app_server_rg.name
  location              = azurerm_resource_group.app_server_rg.location
  network_interface_ids = [var.network_interface_id]
  vm_size               = var.app_server_vm_size

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_os_disk {
    name              = "${var.app_server_name}_OS_disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.app_server_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_windows_config {
    provision_vm_agent = true
    enable_automatic_updates = true
  }

  tags = var.tags
}
