variable "name" {
  description = " Name to be used on all the resources as identifier"
  default     = ""
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = "list"
  default     = []
}

variable "cidr" {
  description = " The CIDR block for the VPC."
  default     = ""
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = "list"
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = "list"
  default     = []
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
variable "tag_name" {
  description = "Tag name to be assigned to the instance"
  default     = ""
}

variable "tag_company" {
  description = "Tag company name to be assigned to the instance"
  default     = ""
}