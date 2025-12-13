variable "resource_groups" {
  description = "List of resource group objects. Each object must have 'name' and 'location'."
  type = map(object({
    name     = string
    location = string
  }))
}
