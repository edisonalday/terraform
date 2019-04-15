provider "aws" {
  region                      = "us-west-2"
}

module "db" {
  source                      = "../../MYSQL"
  identifier                  = "${var.identifier}"
  instance_class              = "${var.instance_class}"
  allocated_storage           = "${var.allocated_storage}"
  storage_encrypted           = "${var.storage_encrypted}"
  username                    = "${var.username}"
  password                    = "${var.password}"
  vpc_security_group_ids      = "${var.vpc_security_group_ids}"
  subnet_ids                  = "${var.subnet_ids}"
}