terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  # Configuration options
  profile = "purplelab-dev"
  region = "us-east-2"
}

resource "aws_instance" "TF-demo" {
  ami     = "ami-0c7217cdde317cfec"
  instance_type = "t2.nano"

  tags = {
    name = "connexa-poc-connector"
    vanta-owner = "carlos.mora@sourcemeridian.com"
    vanta-description = "POC process for conexxa vpn"
    vanta-team = "platform"
    pl-products = "platform-monitoring"
    vanta-no-alert = "True"
    pl-environment = "develop"
  }
}