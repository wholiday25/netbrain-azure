resource "azurerm_key_vault" "this" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = "standard"

  access_policy {
    tenant_id       = data.azurerm_client_config.current.tenant_id
    object_id       = var.object_id
    secret_permissions = [
      "get",
      "list",
      "set",
      "delete",
      "recover",
      "backup",
      "restore"
    ]
  }
}
