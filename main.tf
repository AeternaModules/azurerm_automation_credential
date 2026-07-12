data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.automation_credentials : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_automation_credential" "automation_credentials" {
  for_each = var.automation_credentials

  automation_account_name = each.value.automation_account_name
  name                    = each.value.name
  password                = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  resource_group_name     = each.value.resource_group_name
  username                = each.value.username
  description             = each.value.description
}

