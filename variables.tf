#NESSE ARQUIVO FICAM TODAS AS VARIÁVEIS UTILIZADAS NOS DEMAIS
#Variáveis utilizadas na criação da instância 
variable "region" {
  description = "Região da AWS que a instância será subida"
  default     = "us-east-1"
}
variable "access_key" {
  description = "Access Key para o usuario na AWS"
  default     = "AKIAS2P6OQXX4YZUNR4C"
}
variable "secret_key" {
  description = "Secret Key para o usuario na AWS"
  default     = "lIXdW4cyj3USjpBvqAhBysTwhkuDXbIKtnb8EZzu"
}
variable "name" {
  description = "Nome da instância"
  default     = "devops"
}

variable "env" {
  description = "Tipo de ambiente que será a instância"
  default     = "dev"
}

variable "ami" {
  description = "Modelo padrão de uma AMI Ubuntu da AWS"
  default     = "ami-0261755bbcb8c4a84"
}

variable "instance_type" {
  description = "Configuração padrão do hardware da instância EC2"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repositória utilizado para salvar a aplicação"
  default     = "https://github.com/vivihelen04/devops"
}

#Variáveis utilizadas na criação da VPC
variable "cidr_block" {
  description = "IP utilizado para a criação da VPC"
  default     = "172.17.64.0/18"
}

variable "cidr_block_subnet_public" {
  description = "IP utilizado para a criação da subnet pública"
  default     = "172.17.64.0/22"
}

variable "cidr_block_subnet_private" {
  description = "IP utilizado para a criação da subnet privada"
  default     = "172.17.68.0/22"
}


