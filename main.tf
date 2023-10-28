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


# Create a VPC cloud
resource "aws_vpc" "project_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "project_vpc"
  }
}


# Create an EC2 instance
resource "aws_instance" "project_instance" {
  ami = "ami-08bf0e5db5b302e19"
  instance_type = "t2.micro"
  tags = {
    Name = "project_instance"
  }
}