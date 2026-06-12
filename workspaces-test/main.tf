module "vsphere-vm" {
  source = "../modules/vsphere-vm"

  vsphere_user       = var.vsphere_user
  vsphere_password   = var.vsphere_password
  vsphere_server     = var.vsphere_server
  vsphere_datacenter = var.vsphere_datacenter
  vsphere_cluster    = var.vsphere_cluster
  vsphere_datastore  = var.vsphere_datastore
  vsphere_network    = var.vsphere_network
  vsphere_template   = var.vsphere_template

  vm_name_prefix = var.vm_specs[terraform.workspace].vm_name
  vm_count       = var.vm_specs[terraform.workspace].vm_count
  vm_cpu         = var.vm_specs[terraform.workspace].vm_cpu
  vm_ram         = var.vm_specs[terraform.workspace].vm_ram

  vm_ip_prefix = var.vm_specs[terraform.workspace].vm_ip_prefix
  vm_ip_start  = var.vm_specs[terraform.workspace].vm_ip_start
  vm_netmask   = var.vm_specs[terraform.workspace].vm_netmask
  vm_gateway   = var.vm_specs[terraform.workspace].vm_gateway
}