resource "aws_key_pair" "sshkey" {
  key_name   = "devops"
  public_key = file("./devops.pub")
}

resource "aws_instance" "server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public_subnet.id
  user_data                   = file("install_apache.sh")
  key_name                    = aws_key_pair.sshkey.key_name

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
    repo        = var.repo
  }
}