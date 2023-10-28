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
  cidr_block = var.vpc_cidr_block

  tags = var.vpc_tags
}

# Create a subnet
resource "aws_subnet" "project_subnet" {
  cidr_block = var.subnet_CIDR_block
  vpc_id = aws_vpc.project_vpc.id

  tags = var.subnet_tags
}

# Create an EC2 instance
resource "aws_instance" "project_instance" {
  ami = var.instance_ami
  instance_type = var.my_instance_type
  tags = var.instance_tags
  subnet_id = aws_subnet.project_subnet.id
}