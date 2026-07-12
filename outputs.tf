output "automation_credentials_automation_account_name" {
  description = "Map of automation_account_name values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.automation_account_name }
}
output "automation_credentials_description" {
  description = "Map of description values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.description }
}
output "automation_credentials_name" {
  description = "Map of name values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.name }
}
output "automation_credentials_password" {
  description = "Map of password values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.password }
  sensitive   = true
}
output "automation_credentials_resource_group_name" {
  description = "Map of resource_group_name values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.resource_group_name }
}
output "automation_credentials_username" {
  description = "Map of username values across all automation_credentials, keyed the same as var.automation_credentials"
  value       = { for k, v in azurerm_automation_credential.automation_credentials : k => v.username }
}

