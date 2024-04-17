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
  profile = "tf-demo"
  region = "us-east-2"
}

resource "aws_instance" "TF-demo" {
  ami     = "ami-0c7217cdde317cfec"
  instance_type = "t2.nano"

  tags = {
    name = "tf-demo"
  }
}