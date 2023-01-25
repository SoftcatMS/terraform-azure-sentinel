resource "azurerm_resource_group" "sentinel-test-basic" {
  name     = "rg-test-basic-sentinel"
  location = "UKSouth"
}

module "sentinel" {
  source              = "../../"
  resource_group_name = azurerm_resource_group.sentinel-test-basic.name
  customer_name       = "TEST-BASIC"

  depends_on = [
    azurerm_resource_group.sentinel-test-basic
  ]
}
