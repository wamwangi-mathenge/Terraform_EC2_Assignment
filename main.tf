terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "name" {
  ami = "ami-08bf0e5db5b302e19"
  instance_type = "t2.micro"
  tags = {
    Name = "project_instance"
  }
}