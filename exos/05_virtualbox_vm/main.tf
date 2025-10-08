terraform { 
  required_providers {
     virtualbox = {
       source = "shekeriev/virtualbox"
       version = "0.0.4"
       }
    }
} 

provider "virtualbox" {
  delay = 60
  mintimeout = 5
} 

resource "virtualbox_vm" "ubuntu_vm" {
  name = "ubuntu_vm" 
  image = "${path.module}/images/jammy-server-cloudimg-amd64.ova" 
  cpus = 1 
  memory = "1024 mib" 
network_adapter { type = "nat" } 
}