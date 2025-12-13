output "ids" {
  value = { for k, subnet in azurerm_subnet.this : k => subnet.id }
}

output "names" {
  value = { for k, subnet in azurerm_subnet.this : k => subnet.name }
}
