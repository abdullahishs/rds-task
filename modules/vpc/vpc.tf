module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = "10.0.0.0/16"
  azs             = ["eu-west-2a", "eu-west-2b", "eu-west-2c"] 
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.subnet_name
  subnet_ids = module.vpc.private_subnets
}