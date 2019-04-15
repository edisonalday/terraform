
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
  description       = "Company name to be tagged to the instance"
  default           = ""
}

variable "tag_applevel" {
  description       = "Tag the instance with the app level"
  default           = ""
}

variable "tag_apptype" {
  description       = "Tag the instance with the app type"
  default           = ""
}

variable "tag_appname" {
  description       = "Tag the instance with the app name"
  default           = ""
}

variable "tag_function" {
  description       = "Tag the instance with the app function"
  default           = ""
}

variable "tag_adminname1" {
  description       = "Tag the instance with the admins name"
  default           = ""
}

variable "tag_adminname2" {
  description       = "Tag the instance with the admins name"
  default           = ""
}

variable "tag_dbadminname1" {
  description       = "Tag the instance with the db admin name"
  default           = ""
}

variable "tag_dbadminname2" {
  description       = "Tag the instance with the db admin name"
  default           = ""
}

variable "tag_ec2startstop" {
  description       = "Tag the instance ec2 start and stop time and date"
  default           = ""
}

variable "tag_ec2backup" {
  description       = "Tag the instance with ec2 backup details"
  default           = ""
}

variable "tag_createdby" {
  description       = "To specify how this instance was created"
  default           = ""
}