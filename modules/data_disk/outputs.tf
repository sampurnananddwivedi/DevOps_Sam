output "ids" {
  value = { for k, d in azurerm_managed_disk.this : k => d.id }
}
output "names" {
  value = { for k, d in azurerm_managed_disk.this : k => d.name }
}
