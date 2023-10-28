variable "my_instance_type" {
  type = string
  description = "Project Instance Type"
}

variable "instance_ami" {
  type = string
  description = "Project Instance AMI"
}

variable "instance_tags" {
  type = object({
    Name = string
  })
  description = "Project Instance Tags"
}

variable "vpc_cidr_block" {
  type = string
  description = "Project VPC CIDR Block"
}

variable "vpc_tags" {
  type = object({
    Name = string
  })
  description = "Project VPC Tags"
}

variable "subnet_CIDR_block" {
  type = string
  description = "Project Subnet CIDR Block"
}

variable "subnet_tags" {
  type = object({
    Name = string
  })
}