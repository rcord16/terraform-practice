terraform {
  required_providers {
    virtualbox = {
      source  = "shekeriev/virtualbox"
      version = "0.0.4"
    }
  }
}

provider "virtualbox" {
  delay      = 60
  mintimeout = 5
}

resource "virtualbox_vm" "ubuntu_vm" {
  name   = "ubuntu_vm"

  # Chemin local vers ton image Bento Ubuntu 22.04 téléchargée
  # (tu peux l’adapter selon ton dossier)
  image  = "C:\\images\\bento-ubuntu-22.04-202508.03.0.box"

  cpus   = 1
  memory = "1024 mib"

  network_adapter {
    type = "nat"
  }
}