output "container_id" {
  description = "ID of the created Docker container"
  value       = docker_container.app_container.id
}

output "container_name" {
  description = "Name of the running container"
  value       = docker_container.app_container.name
}

output "container_ports" {
  description = "Mapped ports of the container (external -> internal)"
  value       = "${docker_container.app_container.ports[0].external} -> ${docker_container.app_container.ports[0].internal}"
}

output "image_used" {
  description = "Docker image used for the container"
  value       = docker_image.app_image.name
}

output "container_access_url" {
  description = "Access URL for the running container"
  value       = "http://localhost:${docker_container.app_container.ports[0].external}"
}

