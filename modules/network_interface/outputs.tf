output "ids" {
  value = { for k, nic in azurerm_network_interface.this : k => nic.id }
}

output "names" {
  value = { for k, nic in azurerm_network_interface.this : k => nic.name }
}
