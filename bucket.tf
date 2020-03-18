locals {
  bucket_name = "${var.prefix}-${random_pet.this.id}"
}

resource "random_pet" "this" {
  length = 2
}

module "s3-bucket" {
  source     = "app.terraform.io/larryebaum-demo/s3-bucket/aws"
  version    = "1.6.0"
  bucket     = local.bucket_name
  acl        = "private"
  versioning = {
    enabled = true
  }
}