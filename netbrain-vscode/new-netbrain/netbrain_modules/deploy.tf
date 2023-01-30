provider "azurerm" {
  version = "3.33.0"
  features {}
  subscription_id = var.subscription_id 
  client_id       = var.client_id
  client_secret   = var.client_secret 
  tenant_id       = var.tenant_id 
}


module "resourcegroup" {
  source = "./modules/resourcegroup"

  resource_name = var.resource_name
  location = var.location
}

module "vnet" {
  source = "./modules/vnet"

  vnet_name    = var.vnet_name
  subnet_names = var.subnet_names
}

module "express_route" {
  source = "./modules/express_route"

  vnet_id          = module.vnet.vnet_id
  express_route_id = "var.express_route_id"
}

module "windows_app_server" {
  source = "./modules/windows_app_server"

  vnet_id    = module.vnet.vnet_id
  subnet_id  = module.vnet.subnet_ids[0]
  server_name = var.windows_app_server_name
}

module "rhel_database_server" {
  source = "./modules/rhel_database_server"

  vnet_id    = module.vnet.vnet_id
  subnet_id  = module.vnet.subnet_ids[1]
  server_name = var.rhel_database_server_name
}

module "keyvault" {
  source = "./modules/keyvault"

  keyvault_name = var.keyvault_name
}