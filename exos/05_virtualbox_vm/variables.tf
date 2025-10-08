variable "vm_name" {
  description = "Nom VM"
  type        = string
  default     = "VM_ex5.2"
}

variable "vm_image_rel" {
  description = "Image VM"
  type        = string
  default     = "images/bento-ubuntu-22.04-amd64.box"
}

variable "vm_cpus" {
  description = "CPU VM"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "RAM VM"
  type        = string
  default     = "2048 mib"
}