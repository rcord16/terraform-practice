output "container_name" {
  description = "Nom Conteneur Nginx"
  value       = docker_container.nginx.name
}