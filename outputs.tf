output "log_analytics_workspace_id" {
  value       = azurerm_log_analytics_workspace.sentinel.workspace_id
  description = "The log analytics workspace id that is created and setup for Sentinel"
}

output "log_analytics_workspace_name" {
  value       = azurerm_log_analytics_workspace.sentinel.name
  description = "The log analytics workspace name that is created and setup for Sentinel"
}

output "log_analytics_id" {
  value       = azurerm_log_analytics_workspace.id
  description = "The log analytics resource id"
}
