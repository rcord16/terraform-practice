output "container_name" {
  description = "Nom Conteneur Nginx"
  value       = docker_container.nginx.name
}

output "container_url" {
  description = "URL Conteneur Nginx"
  value       = "http://localhost:${var.external_port}"
}
