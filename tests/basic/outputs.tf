output "log_analytics_workspace_id" {
  value       = module.sentinel.log_analytics_workspace_id
  description = "The name of the Instance being created"
}

output "log_analytics_workspace_name" {
  value       = module.sentinel.log_analytics_workspace_name
  description = "The log analytics workspace name that is created and setup for Sentinel"
}
