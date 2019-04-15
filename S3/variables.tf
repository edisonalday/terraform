
// Required Input Parameter

variable "bucket" {
  default           = ""
  description       = "The name of the S3 bucket, if omitted, Terraform will assign a random, unique identifier"
}

variable "acl" {
  default           = "private"
  description       = ""
}

variable "force_destroy" {
  default           = "true"
  description       = ""
}

variable "sse_algorithm" {
  default           = "AES256"
  description       = ""
}

variable "versioning" {
  default           = "true"
  description       = ""
}

variable "lifecycle_rule" {
  default           = "true"
  description       = ""
}

variable "transition_days_a" {
  default           = "30"
  description       = ""
}

variable "storage_class_a" {
  default           = "STANDARD_IA"
  description       = ""
}

variable "transition_days_b" {
  default           = "60"
  description       = ""
}

variable "storage_class_b" {
  default           = "GLACIER"
  description       = ""
}

variable "instance_account" {
  default           = "GLACIER"
  description       = ""
}


// tags
variable "tag_environment" {
  description       = "Tag name to be assigned to the instance"
  default           = ""
}

variable "tag_company" {
  description       = "Tag company name to be assigned to the instance"
  default           = ""
}