/*resource "docker_image" "devops-php-image" {
  name = "devops-php-image"
}

resource "docker_container" "php_container" {
  name  = "devops-php-container"
  image = docker_image.devops-php-image.latest

  ports {
    internal = 80
    external = 8080
  }
}*/
