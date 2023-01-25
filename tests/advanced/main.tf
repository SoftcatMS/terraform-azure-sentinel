resource "azurerm_resource_group" "sentinel-test-advanced" {
  name     = "rg-test-advanced-sentinel"
  location = "UKSouth"
}

module "sentinel" {
  source              = "../../"
  resource_group_name = azurerm_resource_group.sentinel-test-advanced.name
  customer_name       = "TEST-ADVANCED"

  depends_on = [
    azurerm_resource_group.sentinel-test-advanced
  ]
}

resource "azurerm_sentinel_data_connector_office_365" "sentinel" {
  name                       = "SENTINEL-O365-CONNECTOR"
  log_analytics_workspace_id = module.sentinel.log_analytics_workspace_id

  depends_on = [
    module.sentinel
  ]
}
