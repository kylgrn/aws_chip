

#RDS Cluster Variables
rds_cluster_identifier              = "partsu-cluster-demo"
rds_cluster_engine                  = "aurora-mysql"
rds_cluster_engine_version          = "5.7.mysql_aurora.2.03.2"
rds_cluster_availability_zones      = ["us-west-1a", "us-west-1b"]
rds_cluster_db_name                 = "mydb"
rds_cluster_master_username         = "partsuadmin"
rds_cluster_master_password         = ""
rds_cluster_backup_retention_period = "5"
rds_cluster_backup_window           = "07:00-09:00"
rds_cluster_subnet_group_name       = "main"

#RDS Instance Variables
rds_instance_size                   = "db.m4.large"
rds_instance_count                  = "2"