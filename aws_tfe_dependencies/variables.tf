################################################
# Backend
################################################
variable "s3_state_storage" {
  type    = string
  default = ""
}
variable "s3_state_dynamodb" {
  type    = string
  default = ""
}
variable "s3_keypath" {
  type    = string
  default = ""
}
variable "access_key" {
  type    = string
  default = ""
}
variable "secret_key" {
  type    = string
  default = ""
}
################################################
# VPC Requirement##
################################################
variable "vpc_name" {
  type    = string
  default = ""
}
variable "vpc_cidr" {
  type    = string
  default = ""
}
variable "vpc_azs" {
  type    = list(string)
  default = []
}
variable "vpc_private_subnets" {
  type    = list(string)
  default = []
}
variable "vpc_public_subnets" {
  type    = list(string)
  default = []
}
variable "vpc_database_subnets" {
  type    = list(string)
  default = []
}
variable route53_hosted_zone_name {
    type = string
    default = ""
}
variable subnet_ids {
    type = string
    default = ""  
}





