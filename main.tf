module "vpc" {
  source      = "./modules/vpc"
  vpc_name    = "myweb_vpc"
  subnet_name = "myweb_subnet"
}

data "aws_ssm_parameter" "username" {
  name = "username"
}

data "aws_ssm_parameter" "password" {
  name = "username"
}


module "db" {
  source  = "./modules/rds"
  db_name = "myweb-db"
  allocated_storage = 10
  instance_class    = "db.t3.large"
  username          = data.aws_ssm_parameter.username.value
  password          = data.aws_ssm_parameter.password.value
}

