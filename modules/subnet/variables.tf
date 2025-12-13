variable "subnets" {
  description = "Map of subnet objects. Each object must have 'name', 'resource_group_name', 'virtual_network_name', and 'address_prefix'."
  type = map(object({
    name                = string
    resource_group_name = string
    virtual_network_name= string
    address_prefix      = string
  }))
}

