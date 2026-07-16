output "automation_credentials_id" {
  description = "Map of id values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_credentials_automation_account_name" {
  description = "Map of automation_account_name values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_credentials_description" {
  description = "Map of description values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.description if v.description != null && length(v.description) > 0 }
}
output "automation_credentials_name" {
  description = "Map of name values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_credentials_password" {
  description = "Map of password values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "automation_credentials_resource_group_name" {
  description = "Map of resource_group_name values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automation_credentials_username" {
  description = "Map of username values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.username if v.username != null && length(v.username) > 0 }
}

