provider "azurerm" {
  version = "3.33.0"
}

resource "azurerm_resource_group" "db_server_rg" {
  name     = var.db_server_rg_name
  location = var.location
}

resource "azurerm_linux_virtual_machine" "db_server" {
  name                  = var.db_server_name
  resource_group_name   = azurerm_resource_group.db_server_rg.name
  location              = azurerm_resource_group.db_server_rg.location
  network_interface_ids = [var.network_interface_id]
  vm_size               = var.db_server_vm_size

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_os_disk {
    name              = "${var.db_server_name}_OS_disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.db_server_name
    admin_username = var.admin_username
    ssh_keys       = var.ssh_keys
  }

  tags = var.tags
}
