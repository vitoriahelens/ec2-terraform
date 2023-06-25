#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo ufw allow 80
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html

sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker ubuntu
sudo docker run -d -p 80:80 devops-php-image