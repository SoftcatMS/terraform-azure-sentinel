data "azurerm_resource_group" "sentinel" {
  name                  = var.resource_group_name
}

resource "azurerm_log_analytics_workspace" "sentinel" {
  name                  = var.log_analytics_workspace_name
  location              = data.azurerm_resource_group.sentinel.location
  resource_group_name   = data.azurerm_resource_group.sentinel.name
  sku                   = "PerGB2018"
  retention_in_days     = var.log_analytics_workspace_retention
  tags                  = var.tags
}

resource "azurerm_log_analytics_solution" "sentinel" {
  solution_name         = "SecurityInsights"
  location              = data.azurerm_resource_group.sentinel.location
  resource_group_name   = data.azurerm_resource_group.sentinel.name
  workspace_resource_id = azurerm_log_analytics_workspace.sentinel.id
  workspace_name        = azurerm_log_analytics_workspace.sentinel.name
  tags                  = var.tags
  plan {
    publisher = "Microsoft"
    product = "OMSGallery/SecurityInsights"
  }
}