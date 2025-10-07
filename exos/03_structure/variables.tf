variable "image" {
  description = "Image utilisé (Docker)"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Nom Conteneur"
  type        = string
  default     = "nginx_container"
}

variable "internal_port" {
  description = "Port interne"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Port externe"
  type        = number
  default     = 9090
}