variable "name" {
  description = " Name to be used on all the resources as identifier"
  default     = "custom-vpc"
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = "list"
}

variable "cidr" {
  description = " The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = "list"
  default     = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = "list"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = "true"
}

variable "enable_vpn_gateway" {
  description = "Should be true if you want to create a new VPN Gateway resource and attach it to the VPC"
  default     = "true"
}

// tags
variable "tag_environment" {
  description = "Tag name to be assigned to the instance"
  default     = "dev"
}

variable "tag_company" {
  description = "Company name to be tagged to the instance"
  default     = "scb"
}

variable "tag_applevel" {
  description = "Tag the instance with the app level"
  default     = "1"
}

variable "tag_apptype" {
  description = "Tag the instance with the app type"
  default     = "nonprod"
}

variable "tag_function" {
  description = "Tag the instance with the app function"
  default     = "app"
}

variable "tag_adminname1" {
  description = "Tag the instance with the admins name"
}

variable "tag_adminname2" {
  description = "Tag the instance with the admins name"
}

variable "tag_createdby" {
  description = "To specify how this instance was created"
  default     = "Terraform"
}
