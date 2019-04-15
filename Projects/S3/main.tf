provider "aws" {
  region                  = "us-west-2"
}

module "s3" {
  source                  = "../../tf-modules/S3"
  bucket              	  = "${var.bucket}"
}