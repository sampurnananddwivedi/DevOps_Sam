variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure location."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "virtual_network_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "vm_size" {
  description = "The size of the VM."
      type        = string
    }

variable "admin_username" {
      description = "The admin username for the VMs."
      type        = string
    }

variable "admin_password" {
      description = "The admin password for the VMs."
      type        = string
    }

    variable "image_publisher" {
      description = "The image publisher for the VMs."
      type        = string
    }

    variable "image_offer" {
      description = "The image offer for the VMs."
      type        = string
    }

    variable "image_sku" {
      description = "The image SKU for the VMs."
      type        = string
    }

    variable "image_version" {
      description = "The image version for the VMs."
      type        = string
    }
