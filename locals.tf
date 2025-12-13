locals {
  # Define subnet mapping (one per VM)
  subnets = {
    subnet1 = {
      name                = "subnet-1"
      resource_group_name = var.resource_group_name
      virtual_network_name = var.virtual_network_name
      address_prefix      = "10.0.1.0/24"
    }
    subnet2 = {
      name                = "subnet-2"
      resource_group_name = var.resource_group_name
      virtual_network_name = var.virtual_network_name
      address_prefix      = "10.0.2.0/24"
    }
    subnet3 = {
      name                = "subnet-3"
      resource_group_name = var.resource_group_name
      virtual_network_name = var.virtual_network_name
      address_prefix      = "10.0.3.0/24"
    }
  }
  # Map each NIC to a subnet
  nics = {
    nic1 = {
      name                         = "nic-1"
      location           = var.location
      resource_group_name = var.resource_group_name
      ip_configuration_name         = "ipconfig1"
      subnet_id                    = "subnet1"
      private_ip_address_allocation = "Dynamic"
    }
    nic2 = {
      name                         = "nic-2"
      location           = var.location
      resource_group_name = var.resource_group_name
      ip_configuration_name         = "ipconfig2"
      subnet_id                    = "subnet2"
      private_ip_address_allocation = "Dynamic"
    }
    nic3 = {
      name                         = "nic-3"
      location           = var.location
      resource_group_name = var.resource_group_name
      ip_configuration_name         = "ipconfig3"
      subnet_id                    = "subnet3"
      private_ip_address_allocation = "Dynamic"
    }
  }

  # Map each VM to a NIC
  vms = {
    vm1 = {
      name                  = "vm-1"
      resource_group_name   = var.resource_group_name
      location              = var.location
      size                  = var.vm_size
      admin_username        = var.admin_username
      admin_password        = var.admin_password
      network_interface_id  = "nic1"
      os_disk_caching       = "ReadWrite"
      os_disk_storage_account_type = "Standard_LRS"
      os_disk_name          = "osdisk1"
      image_publisher       = var.image_publisher
      image_offer           = var.image_offer
      image_sku             = var.image_sku
      image_version         = var.image_version
    }
    vm2 = {
      name                  = "vm-2"
      resource_group_name   = var.resource_group_name
      location              = var.location
      size                  = var.vm_size
      admin_username        = var.admin_username
      admin_password        = var.admin_password
      network_interface_id  = "nic2"
      os_disk_caching       = "ReadWrite"
      os_disk_storage_account_type = "Standard_LRS"
      os_disk_name          = "osdisk2"
      image_publisher       = var.image_publisher
      image_offer           = var.image_offer
      image_sku             = var.image_sku
      image_version         = var.image_version
    }
    vm3 = {
      name                  = "vm-3"
      resource_group_name   = var.resource_group_name
      location              = var.location
      size                  = var.vm_size
      admin_username        = var.admin_username
      admin_password        = var.admin_password
      network_interface_id  = "nic3"
      os_disk_caching       = "ReadWrite"
      os_disk_storage_account_type = "Standard_LRS"
      os_disk_name          = "osdisk3"
      image_publisher       = var.image_publisher
      image_offer           = var.image_offer
      image_sku             = var.image_sku
      image_version         = var.image_version
    }
  }

  # Map two data disks per VM
  data_disks = merge(
    { for i in range(1, 4) :
      "disk${2*i-1}" => {
        name                 = "datadisk1-vm${i}"
        location            = var.location
        resource_group_name = var.resource_group_name
        storage_account_type = "Standard_LRS"
        disk_size_gb         = 32
        vm_id                = "vm${i}"
        lun                  = 0
        caching              = "ReadOnly"
      }
    },
    { for i in range(1, 4) :
      "disk${2*i}" => {
        name                 = "datadisk2-vm${i}"
        location            = var.location
        resource_group_name = var.resource_group_name
        storage_account_type = "Standard_LRS"
        disk_size_gb         = 32
        vm_id                = "vm${i}"
        lun                  = 1
        caching              = "ReadOnly"
      }
    }
  )
}
locals {
  resource_groups = {
    rg1 = {
      name     = var.resource_group_name
      location = var.location
    }
  }
}

locals {
  virtual_networks= {
    vnet1 = {
      name                = var.virtual_network_name
      resource_group_name = var.resource_group_name
      location            = var.location
      address_space       = var.virtual_network_address_space
    }
  }
}