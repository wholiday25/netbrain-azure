resource "azurerm_virtual_network" "netbrain_vnet" {
  name                = var.netbrain_vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  count = length(var.subnet_names)

  name                 = var.subnet_names[count.index]
  virtual_network_name = azurerm_virtual_network.netbrain_vnet.name
  address_prefix       = "10.0.${count.index + 1}.0/24"
}

output "netbrain_vnet_id" {
  value = azurerm_virtual_network.netbrain_vnet.id
}

output "subnet_ids" {
  value = azurerm_subnet.subnet.*.id
}