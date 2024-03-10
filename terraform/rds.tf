resource "aws_db_instance" "default" {
  allocated_storage    = 10
  identifier           = var.CLUSTER_IDENTIFIER
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = var.DB_DATABASE
  username             = var.DB_USERNAME
  password             = var.DB_PASSWORD
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
