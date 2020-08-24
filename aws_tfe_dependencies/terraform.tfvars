
###Backend###
s3_state_storage    = ""
s3_state_dynamodb   = ""
s3_keypath          = ""
access_key       = ""
secret_key       = ""

###VPC###
vpc_azs             = ["us-west-1a", "us-west-1b"]
vpc_cidr            = "10.0.0.0/16"
vpc_name            = "partsu_vpc01"
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
vpc_database_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
route53_hosted_zone_name   = "myprodigylab.com"
