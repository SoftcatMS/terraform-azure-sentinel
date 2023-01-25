variable "resource_group_name" {
  description = "Name of the resource group to be imported."
  type        = string
  default     = "rg-ManagedSentinel"
}

variable "customer_name" {
  description = "Customer name used when creating log analytics workspace. Example 'LAW-ManagedSentinel-<customer_name>'"
  type        = string
}

variable "log_analytics_workspace_retention" {
  description = "Retention period in days to retain data in the log analytics workspace"
  type        = string
  default     = "30"
}


