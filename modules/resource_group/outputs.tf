output "names" {
  value = { for k, rg in azurerm_resource_group.this : k => rg.name }
}

output "locations" {
  value = { for k, rg in azurerm_resource_group.this : k => rg.location }
}

output "ids" {
  value = { for k, rg in azurerm_resource_group.this : k => rg.id }
}
