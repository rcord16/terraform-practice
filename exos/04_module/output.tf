output "nginx_name" {
  value       = module.nginx.container_name
  description = "nom conteneur nginx"
}

output "nginx_url" {
  value       = module.nginx.container_url
  description = "URL nginx"
}