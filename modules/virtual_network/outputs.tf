output "ids" {
  value = { for k, vnet in azurerm_virtual_network.this : k => vnet.id }
}

output "names" {
  value = { for k, vnet in azurerm_virtual_network.this : k => vnet.name }
}
