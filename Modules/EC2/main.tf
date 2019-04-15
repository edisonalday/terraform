module "ec2-instance" {
  //https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/1.19.0
  source                  = "terraform-aws-modules/ec2-instance/aws"
  version                 = "1.19.0"
  instance_count          = "${var.instance_count}"
  ami                     = "${var.ami}"
  instance_type           = "${var.instance_type}"
  name                    = "${var.name}"
  vpc_security_group_ids  = "${var.vpc_security_group_ids}"
  iam_instance_profile    = "${var.iam_instance_profile}"
  key_name                = "${var.key_name}"
  subnet_ids              = "${var.subnet_ids}"
  user_data               = "${var.user_data}"
  tags                    = {
    "Name"                = "${var.tag_name}"
    "Company"             = "${var.tag_company}"
  }

  root_block_device       = [
    {
      volume_size         = "${var.root_volume_size}"
      volume_type         = "${var.root_volume_type}"
    },
  ]
}

resource "aws_ebs_volume" "volumes" {
  count                   = "${var.ebs_count * var.instance_count}"
  availability_zone       = "${element(module.ec2-instance.availability_zone, count.index)}"
  type                    = "${var.ebs_type}"
  size                    = "${var.ebs_size}"
  encrypted               = "${var.encrypted}"
}

resource "aws_volume_attachment" "volumes-attachment" {
  depends_on              = ["aws_ebs_volume.volumes", ]
  count                   = "${var.ebs_count * var.instance_count}"
  device_name             = "${var.block_device_names}"
  volume_id               = "${element(aws_ebs_volume.volumes.*.id, count.index)}"
  instance_id             = "${element(module.ec2-instance.id, count.index)}"
}