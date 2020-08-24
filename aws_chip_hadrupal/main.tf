
provider "aws" {
  region = "us-west-1"
}

resource "aws_rds_cluster" "rds_cluster" {
  cluster_identifier      = "${var.rds_cluster_identifier}"
  engine                  = "${var.rds_cluster_engine}"
  engine_version          = "${var.rds_cluster_engine_version}"
  availability_zones      = "${var.rds_cluster_availability_zones}"
  database_name           = "${var.rds_cluster_db_name}"
  master_username         = "${var.rds_cluster_master_username}"
  master_password         = "${var.rds_cluster_master_password}"
  backup_retention_period = "${var.rds_cluster_backup_retention_period}"
  preferred_backup_window = "${var.rds_cluster_backup_window}"
  db_subnet_group_name    = "${var.rds_cluster_subnet_group_name}"
  skip_final_snapshot     = "true"
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = "${var.rds_instance_count}"
  identifier         = "partsu-cluster-demo-${count.index}"
  cluster_identifier = "${aws_rds_cluster.rds_cluster.id}"
  instance_class     = "${var.rds_instance_size}"
  engine             = "${aws_rds_cluster.rds_cluster.engine}"
  #engine_version             = "${aws_rds_cluster.rds_cluster.engine_version}"
}

