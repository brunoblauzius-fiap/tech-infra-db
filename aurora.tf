# resource "aws_rds_cluster" "aurora_mysql" {
#   cluster_identifier      = var.CLUSTER_IDENTIFIER
#   engine                  = "aurora-mysql"
#   engine_version          = "5.7.mysql_aurora.2.11.2"
#   availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
#   database_name           = var.DB_DATABASE
#   master_username         = var.DB_USERNAME
#   master_password         = var.DB_PASSWORD
#   backup_retention_period = 5
#   preferred_backup_window = "05:00-09:00"
#   # db_cluster_instance_class = "db.m6gd.xlarge"

#   # allocated_storage = 10
#   # engine_mode = "provisioned"

#   serverlessv2_scaling_configuration {
#     auto_pause               = true
#     max_capacity             = 2
#     min_capacity             = 1
#     seconds_until_auto_pause = 300
#     timeout_action           = "ForceApplyCapacityChange"
#   }
# }

# #   db_cluster_instance_class = "db.r6gd.xlarge"

# resource "aws_rds_cluster_instance" "aurora_mysql" {
#   cluster_identifier = aws_rds_cluster.aurora_mysql.id
#   instance_class     = "db.serverless"
#   engine             = aws_rds_cluster.aurora_mysql.engine
#   engine_version     = aws_rds_cluster.aurora_mysql.engine_version
# }