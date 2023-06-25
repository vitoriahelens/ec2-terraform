/*resource "docker_image" "php_app" {
  name = "my-php-app"
}*/

/*resource "docker_container" "php_container" {
  name  = "my-php-container"
  image = docker_image.php_app.latest

  ports {
    internal = 80
    external = 8080
  }
}*/