terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "web" {
  name  = "my-nginx-container"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

output "container_port_mapping" {
  description = "External port mapped to nginx port"
  value       = "8080"
}

output "container_name" {
  description = "Name of the Docker container"
  value       = docker_container.web.name
}

output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.web.id
}

output "image_id" {
  description = "ID of the pulled nginx image"
  value       = docker_image.nginx.image_id
}