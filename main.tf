#ESSE ARQUIVO MAIN É UTILIZADO PARA REALIZAR CONEXÕES COM A API DA AWS E DOCKER
provider "aws" {
  region = var.region
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