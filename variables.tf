#variables for ec2
variable "region" {
  description = "Define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the application"
  default     = "devops"
}

variable "env" {
  description = "Environment of the application"
  default     = "dev"
}

variable "ami" {
  description = "AWS AMI to be used"
  default     = "ami-0261755bbcb8c4a84"
}

variable "instance_type" {
  description = "AWS instance type defines the hardware configuration of the machine"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repository of the application"
  default     = "https://github.com/vivihelen04/devops"
}

#variables for vpc
variable "cidr_block" {
  description = "bloc cidr"
  default     = "172.17.64.0/18"
}

variable "cidr_block_subnet_public" {
  description = "bloc cidr for public subnet"
  default     = "172.17.64.0/22"
}

variable "cidr_block_subnet_private" {
  description = "bloc cidr for privatesubnet"
  default     = "172.17.68.0/22"
}

