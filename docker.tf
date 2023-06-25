resource "docker_image" "devops-php-image" {
  name = "devops-php-image"
}

resource "docker_container" "php_container" {
  name  = "devops-php-container"
  image = docker_image.devops-php-image.latest

  ports {
    internal = 80
    external = 8080
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install docker -y",
      "sudo service docker start",
      "sudo usermod -aG docker ubuntu",
      "sudo docker run -d -p 80:80 devops-php-image"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("./devops")
      host        = aws_subnet.public_subnet.id
    }
  }
}