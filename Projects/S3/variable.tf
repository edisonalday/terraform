
// Required Input Parameter

variable "bucket" {
  default           = "terraform1015"
  description       = "The name of the S3 bucket, if omitted, Terraform will assign a random, unique identifier"
}