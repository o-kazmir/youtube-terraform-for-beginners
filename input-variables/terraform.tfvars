container_name = "my-nginx"
external_port  = 8080

env_vars = [
  "APP_ENV=dev",
  "LOG_LEVEL=info"
]

container_labels = {
  environment = "dev"
  project     = "terraform-demo"
}