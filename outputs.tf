output "log_analytics_workspace_id" {
 value       = azurerm_log_analytics_workspace.sentinel.id
 description = "The log analytics workspace id that is created and setup for Sentinel"
}