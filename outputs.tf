#ESSE ARQUIVO É UTILIZADO APENAS PARA PRINTAR O VALOR DO MEU IP E DNS APÓS A INSTÂNCIA SER PUBLICADA
output "public_ip" {
  value = aws_instance.server.public_ip
}

output "public_dns" {
  value = aws_instance.server.public_dns
}

output "vpc" {
  value = aws_vpc.vpc_devops.id
}

