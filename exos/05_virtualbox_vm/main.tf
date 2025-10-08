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
  name   = "ubuntu_vm"
  image  = ""
  cpus   = 1
  memory = "1024 mib"

  network_adapter { type = "nat" }
}