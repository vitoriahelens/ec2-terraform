#ARQUIVO UTILIZADO PARA A CRIAÇÃO DA INSTÂNCIA EC2

#NESSE TRECHO É FEITA A DEFINIÇÃO DE UMA CHAVE SSH VINCULADA A MINHA INSTÂNCIA
resource "aws_key_pair" "sshkey" {
  key_name   = "devops"
  public_key = file("./devops.pub")
}

#ESSE BLOCO É RESPONSÁVEL PELA CRIAÇÃO DA INSTÂNCIA
resource "aws_instance" "server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public_subnet.id
  user_data                   = file("install_file.sh")
  key_name                    = aws_key_pair.sshkey.key_name

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
    repo        = var.repo
  }
}