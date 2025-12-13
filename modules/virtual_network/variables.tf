variable "virtual_networks" {
  description = "Map of virtual network objects. Each object must have 'name', 'address_space', 'location', and 'resource_group_name'."
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  }))
}
