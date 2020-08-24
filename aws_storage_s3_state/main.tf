provider "aws" {
  region = "us-west-1"
  access_key = "AKIARU66GPGZR7LYUAG4"
  secret_key = "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"
}
resource "aws_s3_bucket" "terraform_state_s3_bucket" {
    bucket = "partsu-network-state"
 
    versioning {
      enabled = true
    }
 
    lifecycle {
      prevent_destroy = true
    }
}
resource "aws_dynamodb_table" "terraform_state_locking_dynamodb" {
  name = "partsu-state-locking"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}