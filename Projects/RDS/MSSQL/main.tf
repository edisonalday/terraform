provider "aws" {
  region                              = "us-west-2"
}

module "db" {
  source                              = "../../MSSQL"
  identifier                          = "${var.identifier}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"
  storage_encrypted                   = "${var.storage_encrypted}"
  name                                = "${var.name}"
  username                            = "${var.username}"
  password                            = "${var.password}"
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  subnet_ids                          = "${var.subnet_ids}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"
}