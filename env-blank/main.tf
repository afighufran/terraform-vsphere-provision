module "vm_blank" {
  source = "../modules/vsphere-vm-blank"

  vsphere_user          = var.vsphere_user
  vsphere_password      = var.vsphere_password
  vsphere_server        = var.vsphere_server
  vsphere_datacenter    = var.vsphere_datacenter
  vsphere_cluster       = var.vsphere_cluster
  vsphere_datastore     = var.vsphere_datastore
  vsphere_iso_datastore = var.vsphere_iso_datastore
  vsphere_network       = var.vsphere_network

  vm_count       = var.vm_count
  vm_name_prefix = var.vm_name_prefix
  vm_cpu         = var.vm_cpu
  vm_ram         = var.vm_ram
  vm_guest_id    = var.vm_guest_id
  vm_disk_size   = var.vm_disk_size

  vm_ip_prefix = var.vm_ip_prefix
  vm_ip_start  = var.vm_ip_start
  vm_netmask   = var.vm_netmask
  vm_gateway   = var.vm_gateway

  proxmox_iso_path = var.proxmox_iso_path
}
