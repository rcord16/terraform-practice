terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

module "nginx1" {
  source        = "./modules/nginx"
  name          = "nginx_1"
  image         = "nginx:latest"
  external_port = 8080
}

module "nginx2" {
  source        = "./modules/nginx"
  name          = "nginx_2"
  image         = "nginx:latest"
  external_port = 8081
}