resource "azurerm_resource_group" "sentinel-test-basic" {
  name     = "rg-ManagedSentinel"
  location = "UKSouth"
}

module "sentinel" {
  source              = "github.com/SoftcatMS/terraform-azure-sentinel"
  resource_group_name = azurerm_resource_group.sentinel-test-basic.name
  customer_name       = "TEST-BASIC"

  depends_on = [
    azurerm_resource_group.sentinel-test-basic
  ]
}
