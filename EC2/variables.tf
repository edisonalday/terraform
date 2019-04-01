// EC2 mandatory variables
variable "name" {
  default     = ""
  description = "Assign this name to the instance"
}

// EC2 Default values
variable "ami" {
  description = "Amazon Machine ID used for provisioning the instance"
  default     = ""
}

variable "instance_type" {
  default     = ""
  description = "Type of instance to be provisioned"
}

variable "vpc_security_group_ids" {
  description = "Subnet ID where the isntance has to be created"
  type        = "list"
  default     = []
}

// EC2 optional variables

variable "user_data" {
  default     = ""
  description = "Enter any user data here"
}

variable "iam_instance_profile" {
  default     = ""
  description = "iam role to enable ec2 to access s3"
}

variable "instance_count" {
  default     = ""
  description = "Number of amazon instance to be provisioned"
}

variable "key_name" {
  default     = ""
  description = "Type key to be used for ssh"
}

variable "subnet_ids" {
  type        = "list"
  description = "List of subnets to be associated with the instance"
  default     = []
}

variable "ebs_count" {
  default     = ""
  description = "Enter the number EBS volumes to attach to the instance"
}

variable "ebs_size" {
  description = "Size of the EBS volumes. This has to be consisten with EBS_count and block_device_names"
  default     = 20
}

variable "encrypted" {
  description = "Specifies whether the EBS volume is encrypted"
  default     = "true"
}

variable "ebs_type" {
  description = "EBS type"
  default     = "gp2"
}

variable "block_device_names" {
  description = "Enter the block device name (refer to aws doc)- the total default names should be equal to the ebs_count value"
  default     = "xvdh"
}

variable "root_volume_size" {
  description = "Size of the Root volume"
  default     = 10
}

variable "root_volume_type" {
  description = "Type of the root volume"
  default     = "gp2"
}

// tags
variable "tag_environment" {
  description = "Tag name to be assigned to the instance"
  default     = ""
}

variable "tag_company" {
  description = "Company name to be tagged to the instance"
  default     = ""
}

variable "tag_applevel" {
  description = "Tag the instance with the app level"
  default     = ""
}

variable "tag_apptype" {
  description = "Tag the instance with the app type"
  default     = ""
}

variable "tag_appname" {
  description = "Tag the instance with the app name"
  default     = ""
}

variable "tag_function" {
  description = "Tag the instance with the app function"
  default     = ""
}

variable "tag_adminname1" {
  description = "Tag the instance with the admins name"
  default     = ""
}

variable "tag_adminname2" {
  description = "Tag the instance with the admins name"
  default     = ""
}

variable "tag_dbadminname1" {
  description = "Tag the instance with the db admin name"
  default     = ""
}

variable "tag_dbadminname2" {
  description = "Tag the instance with the db admin name"
  default     = ""
}

variable "tag_ec2startstop" {
  description = "Tag the instance ec2 start and stop time and date"
  default     = ""
}

variable "tag_ec2backup" {
  description = "Tag the instance with ec2 backup details"
  default     = ""
}

variable "tag_createdby" {
  description = "To specify how this instance was created"
  default     = ""
}