module "log_storage" {
    source = "github.com/jetbrains-infra/terraform-aws-s3-bucket-for-logs"
    name   = "example-logs"
}

resource "aws_s3_bucket" "example" {
  bucket = "example"

  logging {
    target_bucket = module.log_storage.bucket_id
    target_prefix = module.log_storage.s3_logs_path
  }
}