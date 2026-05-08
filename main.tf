module "ubuntu_24_server" {
  source = "./modules/vsphere-vm"

  vsphere_user       = var.vsphere_user
  vsphere_password   = var.vsphere_password
  vsphere_server     = var.vsphere_server
  vsphere_datacenter = var.vsphere_datacenter
  vsphere_cluster    = var.vsphere_cluster
  vsphere_datastore  = var.vsphere_datastore
  vsphere_network    = var.vsphere_network
  vsphere_template   = var.vsphere_template
  
  vm_count       = var.vm_count
  vm_name_prefix = var.vm_name_prefix
  vm_cpu         = var.vm_cpu
  vm_ram         = var.vm_ram

  vm_ip_prefix = var.vm_ip_prefix
  vm_ip_start  = var.vm_ip_start
  vm_netmask   = var.vm_netmask
  vm_gateway   = var.vm_gateway
}

module "db_server" {
  source = "./modules/vsphere-vm"

  vsphere_user       = var.vsphere_user
  vsphere_password   = var.vsphere_password
  vsphere_server     = var.vsphere_server
  vsphere_datacenter = var.vsphere_datacenter
  vsphere_cluster    = var.vsphere_cluster
  vsphere_datastore  = var.vsphere_datastore
  vsphere_network    = var.vsphere_network
  vsphere_template   = var.vsphere_template
  
  vm_count       = 3
  vm_name_prefix = "db-server"
  vm_cpu         = 4
  vm_ram         = 4096

  vm_ip_prefix = "172.16.9"
  vm_ip_start  = 190
  vm_netmask   = var.vm_netmask
  vm_gateway   = var.vm_gateway
}

module "app_server" {
  source = "./modules/vsphere-vm"

  vsphere_user       = var.vsphere_user
  vsphere_password   = var.vsphere_password
  vsphere_server     = var.vsphere_server
  vsphere_datacenter = var.vsphere_datacenter
  vsphere_cluster    = var.vsphere_cluster
  vsphere_datastore  = var.vsphere_datastore
  vsphere_network    = var.vsphere_network
  vsphere_template   = var.vsphere_template
  
  vm_count       = 3
  vm_name_prefix = "app-server"
  vm_cpu         = 2
  vm_ram         = 2048

  vm_ip_prefix = "172.16.9"
  vm_ip_start  = 195
  vm_netmask   = var.vm_netmask
  vm_gateway   = var.vm_gateway
}

moved {
  from = vsphere_virtual_machine.vm_belajar
  to   = module.ubuntu_24_server.vsphere_virtual_machine.vm_belajar
}