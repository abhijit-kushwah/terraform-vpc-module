# Terraform AWS VPC Module

This Terraform project provisions an AWS Virtual Private Cloud (VPC) using the [terraform-aws-modules/vpc/aws](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) module. It sets up public and private subnets across multiple availability zones with essential networking components.

## Features

- Custom VPC with CIDR `10.0.0.0/16`
- Public and Private Subnets spread across 3 Availability Zones
- NAT Gateway for secure internet access from private subnets
- Public IP Mapping enabled for instances in public subnets
- Tagging for better resource management

## Project Structure

📁 terraform-aws-vpc 
│── main.tf # Defines the VPC and subnets 
│── variables.tf # Defines input variables 
│── outputs.tf # Defines output values 
│── .gitignore # Ignores Terraform state files 
│── README.md # Project Documentation



## Prerequisites

Before using this Terraform configuration, ensure you have:

- Terraform (`>=1.0`)** installed: [Download Terraform](https://www.terraform.io/downloads.html)
- AWS CLI installed and configured with valid credentials
- An AWS Account with necessary permissions to create networking resources

## How to Use

1. Initialize Terraform
   - terraform init
2. Validate Configuration
   - terraform validate
3. Plan Deployment
   - terraform plan
4. Apply Changes
   - terraform apply -auto-approve
5. Destroy Resources (Optional)
   - terraform destroy -auto-approve


