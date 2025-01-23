output "private_subnates_id" {
    value = module.vpc.private_subnets
  
}

output "public_subnates_id" {
    value = module.vpc.public_subnets
  
}

output "igw_id" {
    value = module.vpc.igw_id
  
}

