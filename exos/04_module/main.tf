terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

module "nginx" {
  source        = "./modules/nginx"
  name          = "nginx_1"
  image         = "nginx:latest"
  external_port = 8080
}