#AQUI É FEITA A CRIAÇÃO DA VPC COM AS SUBNETS PRE-DEFINIDAS
resource "aws_vpc" "vpc_devops" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.vpc_devops.id
  cidr_block = var.cidr_block_subnet_public
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_devops.id
  cidr_block = var.cidr_block_subnet_private
}

#################################
resource "aws_db_subnet_group" "devops_db" {
  name       = "devops-db"
  subnet_ids = var.public_subnets
}