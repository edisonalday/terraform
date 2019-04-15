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
variable "tag_name" {
  description = "Tag name to be assigned to the instance"
  default     = ""
}

variable "tag_company" {
  description = "Tag company name to be assigned to the instance"
  default     = ""
}