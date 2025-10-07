variable "name" {
  description = "nom conteneur"
  type        = string
}

variable "image" {
  description = "image docker"
  type        = string
  default     = "nginx:latest"
}

variable "external_port" {
  description = "port externe"
  type        = number
}

variable "internal_port" {
  description = "port interne Nginx"
  type        = number
  default     = 80
}