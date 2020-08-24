
###TFE###
friendly_name_prefix = "partsu"
tfe_hostname         = "my-tfe-instance.myprodigylab.com"
tfe_license_file_path = "./terraform-chip.rli"
tfe_release_sequence  = "414"
tfe_initial_admin_username = "tfe-local-admin"
tfe_initial_admin_email    = "tfe-admin@consult-prodigy.com"
tfe_initial_admin_pw       = "ThisAintSecure123!"
tfe_initial_org_name       = "partsu-org"
tfe_initial_org_email      = "tfe-admins@consult-prodigy.com"
vpc_id                     = "vpc-078bb6364e051a46d"
alb_subnet_ids           = ["subnet-0db5705f12f4b642f", "subnet-05b5b58f68375fd3e"]
ec2_subnet_ids             = ["subnet-0209c6f83be8afe05", "subnet-0d70599b503de4079"]
ingress_cidr_alb_allow     = ["0.0.0.0/0"]
ingress_cidr_ec2_allow     = ["104.220.82.116/32"] # my workstation IP
ssh_key_pair               = "my-key-pair-us-west-1"
rds_subnet_ids             = ["subnet-0209c6f83be8afe05", "subnet-0d70599b503de4079"]
route53_hosted_zone_name   = "myprodigylab.com"
kms_key_arn                = "arn:aws:acm:us-west-1:113745754547:certificate/793d191c-065f-4001-8b93-7ba7434bfc38"
awsregion                     = "us-west-1"
