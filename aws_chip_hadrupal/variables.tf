variable "rds_cluster_identifier" {
  type    = string
  default = ""
}
variable "rds_cluster_engine" {
  type    = string
  default = ""
}
variable "rds_cluster_engine_version" {
  type    = string
  default = ""
}
variable "rds_cluster_availability_zones" {
  type    = list(string)
}
variable "rds_cluster_db_name" {
  type    = string
  default = ""
}
variable "rds_cluster_master_username" {
  type    = string
  default = ""
}
variable "rds_cluster_master_password" {
  type    = string
  default = ""
}
variable "rds_cluster_backup_retention_period" {
  type    = string
  default = ""
}
variable "rds_cluster_backup_window" {
  type    = string
  default = ""
}
variable "rds_cluster_subnet_group_name" {
  type    = string
  default = ""
}
variable "rds_instance_size" {
  type    = string
  default = ""
}
variable "rds_instance_count" {
  type    = string
  default = ""
}

