variable "resource_group_name" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "Name of log analytics workspace to be created for Sentinel storage"
  type = string
}

variable "log_analytics_workspace_retention" {
  description = "Retention period in days to retain data in the log analytics workspace"
  type = string
  default = "30"
}


