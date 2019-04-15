provider "aws" {
  region                      = "us-west-2"
}

module "vpc" {
  source                      = "../../VPC"
  name                        = "${var.name}"
  cidr                        = "${var.cidr}"
  azs                         = "${var.azs}"
  private_subnets             = "${var.private_subnets}"
  public_subnets              = "${var.public_subnets}"
}
