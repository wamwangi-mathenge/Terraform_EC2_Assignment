# Terraform EC2 Instance in AWS

## Objective:
Your task is to create a Terraform project that provisions an Amazon Web Services (AWS) EC2 instance, sets up a VPC with a subnet, and defines some basic instance variables.

## Requirements
1. Use Terraform to define the AWS resources
2. Create an EC2 instance with the following specifications
    - Instance Type: t2.micro
    - AMI: Choose an Ubuntu AMI
    - Tags: Specify the tags of an existing EC2 key pair
3. Create a VPC with a name and specify its CIDR block
4. Create a subnet within the VPC and specify its CIDR block
5. Define variables for the instance type, AMI, tags, VPC CIDR block and subnet CIDR block
6. Use these variables in your Terraform configuration
7. Create an output that displays the public IP address of the EC2 instance.