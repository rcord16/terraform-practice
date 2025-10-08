terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu_vm" {
  name   = var.vm_name
  image  = "${path.module}/${var.vm_image_rel}"
  cpus   = var.vm_cpus
  memory = var.vm_memory

  network_adapter { type = "nat" }
}
