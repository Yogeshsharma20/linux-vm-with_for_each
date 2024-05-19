resource "azurerm_virtual_network" "example" {
    for_each = var.azurerm_virtual_network
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.azurerm_resource_group_name
  address_space       = each.value.address_space
}
