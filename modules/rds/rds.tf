resource "aws_db_instance" "myweb_db_instance" {
  allocated_storage    = var.allocated_storage
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.instance_class
  identifier           = var.db_name
  parameter_group_name = "default.mysql5.7"
  multi_az               = true

}
