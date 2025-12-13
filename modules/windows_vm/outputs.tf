output "ids" {
  value = { for k, vm in azurerm_windows_virtual_machine.this : k => vm.id }
}

output "names" {
  value = { for k, vm in azurerm_windows_virtual_machine.this : k => vm.name }
}
