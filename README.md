# Terraform AWS EC2 Instance Provisioning

This Terraform project provisions an AWS EC2 instance within a VPC and subnet, with specified configuration. It also includes variables for easy customization.

## Requirements

Before you begin, make sure you have the following prerequisites installed:

1. [Terraform](https://www.terraform.io/downloads.html)
2. [AWS CLI](https://aws.amazon.com/cli/)

## Configuration

1. Create an AWS IAM user with the necessary permissions and configure AWS CLI with the user's credentials.

2. Modify the `main.tf` file to customize the following parameters:
   - `instance_type`: EC2 instance type (default: t2.micro).
   - `ami_id`: AMI ID for the desired Ubuntu version (default: Ubuntu 20.04 LTS).
   - `tags`: Tags to assign to the EC2 instance.
   - `vpc_cidr`: CIDR block for the VPC.
   - `subnet_cidr`: CIDR block for the subnet.

3. Run `terraform init` to initialize the working directory.

4. Run `terraform apply` to create the AWS resources as defined.

5. After provisioning is complete, you can get the public IP address of the EC2 instance using the output `instance_public_ip`.

## Usage

### Initialize the Terraform project

```shell
terraform init
```

### Deploy AWS resources
```
terraform apply
```

### Destroy AWS resources
```
terraform destroy
```

## Outputs
`instance_public_ip`: The public IP address of the provisioned EC2 instance

## License
This project is available under the terms of the MIT License

## Author
Brian Mathenge