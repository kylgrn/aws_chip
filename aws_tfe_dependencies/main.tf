
provider "aws" {
  region = "us-west-1"
}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.vpc_name}"
  cidr = "${var.vpc_cidr}"

  azs             = "${var.vpc_azs}"
  private_subnets = "${var.vpc_private_subnets}"
  public_subnets  = "${var.vpc_public_subnets}"
  database_subnets = "${var.vpc_database_subnets}"

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}
resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = module.vpc.database_subnets

  tags = {
    Name = "My DB subnet group"
  }
}
module "aws_route53" {
  source = "./modules/aws_route53/"

}

