#ESSE ARQUIVO MAIN É UTILIZADO PARA REALIZAR CONEXÕES COM A API DA AWS E DOCKER
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}