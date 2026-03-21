variable "container_name" {
  type    = string
  default = "demo-nginx"
  sensitive = true
}

variable "external_port" {
  type    = number
  default = 8080
}

variable "env_vars" {
  type    = list(string)
  default = ["APP_ENV=dev", "LOG_LEVEL=info"]
}

variable "container_labels" {
  type = map(string)
  default = {
    environment = "dev"
    project     = "terraform-demo"
  }
}
