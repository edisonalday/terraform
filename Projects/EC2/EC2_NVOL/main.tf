provider "aws" {
  region                 = "us-west-2"
}
module "ec2_instance_no_ebs" {
  source                 = "../../../EC2"
  name                   = "${var.name}"
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  instance_count         = "${var.instance_count}"
  ebs_count              = "${var.ebs_count}"
  key_name               = "${var.key_name}"
  subnet_ids             = "${var.subnet_ids}"
  vpc_security_group_ids = "${var.vpc_security_group_ids }"
}