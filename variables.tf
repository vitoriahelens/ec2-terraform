variable "region" {
    description = "Define what region the instance will be deployed"
    default = "us-east-1"
}

variable "name" {
    description = "Name of the application"
    default = "devops"
}

variable "env" {
    description = "Environment of the application"
    default = "prod"
}

variable "ami" {
    description = "AWS AMI to be used"
    default = "ami-0054f12023d88e935"
}

variable "instance_type" {
    description = "AWS instance type defines the hardware configuration of the machine"
    default = "t2.micro"
}

variable "repo" {
    description = "Repository of the application"
    default = "https://github.com/vivihelen04/devops"
}

