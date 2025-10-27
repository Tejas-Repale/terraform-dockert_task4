variable "image_name" {
  description = "The name of the Docker image to pull"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "The name of the Docker container to create"
  type        = string
  default     = "tf-nginx-demo"
}

variable "internal_port" {
  description = "The internal port inside the container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "The external port on the host machine"
  type        = number
  default     = 9090
}

variable "app_env" {
  description = "Environment variable passed to the container"
  type        = string
  default     = "terraform-demo"
}

variable "restart_policy" {
  description = "Restart policy for the Docker container"
  type        = string
  default     = "on-failure"
}

