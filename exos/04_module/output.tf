output "nginx1_name" {
  value       = module.nginx1.container_name
  description = "nom conteneur nginx 1"
}

output "nginx1_url" {
  value       = module.nginx1.container_url
  description = "URL nginx 1"
}

output "nginx2_name" {
  value       = module.nginx2.container_name
  description = "nom conteneur nginx 2"
}

output "nginx2_url" {
  value       = module.nginx2.container_url
  description = "URL nginx 2"
}