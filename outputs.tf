output "automation_credentials" {
  description = "All automation_credential resources"
  value       = azurerm_automation_credential.automation_credentials
  sensitive   = true
}
output "automation_credentials_automation_account_name" {
  description = "List of automation_account_name values across all automation_credentials"
  value       = [for k, v in azurerm_automation_credential.automation_credentials : v.automation_account_name]
}
output "automation_credentials_description" {
  description = "List of description values across all automation_credentials"
  value       = [for k, v in azurerm_automation_credential.automation_credentials : v.description]
}
output "automation_credentials_name" {
  description = "List of name values across all automation_credentials"
  value       = [for k, v in azurerm_automation_credential.automation_credentials : v.name]
}
output "automation_credentials_password" {
  description = "List of password values across all automation_credentials"
  value       = [for k, v in azurerm_automation_credential.automation_credentials : v.password]
  sensitive   = true
}
output "automation_credentials_resource_group_name" {
  description = "List of resource_group_name values across all automation_credentials"
  value       = [for k, v in azurerm_automation_credential.automation_credentials : v.resource_group_name]
}
output "automation_credentials_username" {
  description = "List of username values across all automation_credentials"
  value       = [for k, v in azurerm_automation_credential.automation_credentials : v.username]
}

