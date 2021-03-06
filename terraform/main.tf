provider "aws" {
  region  = "eu-west-2"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "terraformwest-s3-bucket"
  acl    = "private"
  region = "eu-west-2"

  versioning = {
    enabled = false
  }

}
