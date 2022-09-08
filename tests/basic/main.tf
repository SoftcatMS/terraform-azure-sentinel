resource "azurerm_resource_group" "sentinel-test-basic" {
  name = "rg-test-basic-sentinel"
  location = "UKSouth"
}

module "sentinel" {
  source = "../../"
  resource_group_name = azurerm_resource_group.sentinel-test-basic.name
  log_analytics_workspace_name = "UKS-LOG-SOFTCAT-SENTINEL-TEST-BASIC"

  depends_on = [
    azurerm_resource_group.sentinel-test-basic
  ]
}