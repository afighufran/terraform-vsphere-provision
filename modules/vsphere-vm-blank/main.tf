resource "vsphere_virtual_machine" "vm_blank" {
  count                      = var.vm_count
  name                       = "${var.vm_name_prefix}-${count.index + 1}"
  resource_pool_id           = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id               = data.vsphere_datastore.datastore.id
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  cpu_hot_add_enabled        = true
  memory_hot_add_enabled     = true
  nested_hv_enabled          = true

  num_cpus = var.vm_cpu
  memory   = var.vm_ram
  guest_id = var.vm_guest_id

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = "vmxnet3"
  }

  disk {
    label            = "disk0"
    size             = var.vm_disk_size
    thin_provisioned = true
  }

  cdrom {
    datastore_id = data.vsphere_datastore.iso_datastore.id
    path         = var.proxmox_iso_path
  }
}
