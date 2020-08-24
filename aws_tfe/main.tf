
provider "aws" {
  region = "us-west-1"
}

module "tfe" {
  source = "github.com/hashicorp/terraform-chip-tfe-is-terraform-aws-ptfe-v4-quick-install"
  friendly_name_prefix       = "${var.friendly_name_prefix}"
  common_tags                = {
                                 "Environment" = "Test"
                                 "Tool"        = "Terraform"
                                 "Owner"       = "YourName"
                               }
  tfe_hostname               = "${var.tfe_hostname}"
  tfe_license_file_path      = "${var.tfe_license_file_path}"
  tfe_release_sequence       = "${var.tfe_release_sequence}"
  tfe_initial_admin_username = "${var.tfe_initial_admin_username}"
  tfe_initial_admin_email    = "${var.tfe_initial_admin_email}"
  tfe_initial_admin_pw       = "${var.tfe_initial_admin_pw}"
  tfe_initial_org_name       = "${var.tfe_initial_org_name}"
  tfe_initial_org_email      = "${var.tfe_initial_org_email}"
  vpc_id                     = "${var.vpc_id}"
  alb_subnet_ids             = "${var.alb_subnet_ids}"
  ec2_subnet_ids             = "${var.ec2_subnet_ids}"
  route53_hosted_zone_name   = "${var.route53_hosted_zone_name}"
  #kms_key_arn                = "arn:aws:kms:us-east-1:000000000000:key/00000000-1111-2222-3333-444444444444"
  ingress_cidr_alb_allow     = "${var.ingress_cidr_alb_allow}"
  ingress_cidr_ec2_allow     = "${var.ingress_cidr_ec2_allow}"
  ssh_key_pair               = "${var.ssh_key_pair}"
  rds_subnet_ids             = "${var.rds_subnet_ids}"
    }
  
output "tfe_url" {
  value = module.tfe.tfe_url
}
output "tfe_admin_console_url" {
  value = module.tfe.tfe_admin_console_url
}
