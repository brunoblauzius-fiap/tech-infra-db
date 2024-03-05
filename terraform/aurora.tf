resource "aws_rds_cluster" "aurora-mysql" {
  cluster_identifier      = var.cluster_identifier
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.11.2"
  availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
  database_name           = var.DB_DATABASE
  master_username         = var.DB_USERNAME
  master_password         = var.DB_PASSWORD
  backup_retention_period = 5
  preferred_backup_window = "05:00-09:00"
  # db_cluster_instance_class = "db.m6gd.xlarge"

  # allocated_storage = 10
  # engine_mode = "provisioned"

  # serverlessv2_scaling_configuration {
  #   # auto_pause               = true
  #   max_capacity             = 8
  #   min_capacity             = 2
  #   # seconds_until_auto_pause = 300
  #   # timeout_action           = "ForceApplyCapacityChange"
  # }
}

#   db_cluster_instance_class = "db.r6gd.xlarge"
