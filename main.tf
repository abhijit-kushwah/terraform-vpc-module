module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = data.aws_availability_zones.available.names
  private_subnets = var.private_subnets
  private_subnet_names = ["private_us_east_1a", "private_us_east_1b", "private_us_east_1c"]
  public_subnet_names = ["public_us_east_1a", "public_us_east_1b", "public_us_east_1c"]
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = false
  single_nat_gateway = true
  one_nat_gateway_per_az = false
  map_public_ip_on_launch = true

  public_subnet_tags = {
    subnet = "public"

  }

  private_subnet_tags = {
    subnet = "private"

  }

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

data "aws_availability_zones" "available" {
    state = "available"
  
}

output "azs" {
    value = slice(data.aws_availability_zones.available.names, 0, 4)
  
}



# output "azs" {
#     value = data.aws_availability_zones.available.names
  
# }