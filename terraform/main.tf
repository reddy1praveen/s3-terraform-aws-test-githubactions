provider "aws" {
  region  = "us-east-1"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "preddy1-s3-bucket"
  acl    = "private"
  region = "eu-west-2"

  versioning = {
    enabled = true
  }

}