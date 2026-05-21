terraform {
  required_providers {
    vsphere = {
      source = "vmware/vsphere"
    }
  }
}

resource "vsphere_virtual_machine" "vm_belajar" {
  count                  = var.vm_count
  name                   = "${var.vm_name_prefix}-${count.index + 1}"
  resource_pool_id       = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id           = data.vsphere_datastore.datastore.id
  cpu_hot_add_enabled    = true
  memory_hot_add_enabled = true

  num_cpus = var.vm_cpu
  memory   = var.vm_ram
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template.disks[0].size
    eagerly_scrub    = data.vsphere_virtual_machine.template.disks[0].eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template.disks[0].thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options {
        host_name = "${var.vm_name_prefix}-${count.index + 1}"
        domain    = "local"
      }

      network_interface {
        ipv4_address = "${var.vm_ip_prefix}.${var.vm_ip_start + count.index}"
        ipv4_netmask = var.vm_netmask
      }

      ipv4_gateway = var.vm_gateway
    }
  }
}
