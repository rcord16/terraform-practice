terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

resource "docker_image" "nginx" {
  name = var.image
}

resource "docker_container" "nginx" {
  name  = var.name
  image = docker_image.nginx.image_id

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}