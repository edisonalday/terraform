variable "name" {
  default     = "EC2 Instance"
  description = "Assign this name to the instance"
}

variable "ami" {
  description = "Amazon Machine ID used for provisioning the instance"
  default     = "ami-061392db613a6357b"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Type of instance to be provisioned"
}

variable "instance_count" {
  default     = 1
}

variable "ebs_count" {
  default     = 0
  description = "Enter the number EBS volumes to attach to the instance"
}

variable "key_name" {
  default     = "Test"
  description = "Type key to be used for ssh"
}

variable "subnet_ids" {
  type        = "list"
  description = "List of subnets to be associated with the instance"
  default     = ["subnet-0b66e940"]
}

variable "vpc_security_group_ids" {
  description = "Subnet ID where the isntance has to be created"
  type        = "list"
  default     = ["sg-13d7a962"]
}