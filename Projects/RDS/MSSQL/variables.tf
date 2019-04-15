variable "identifier" {
  default           = "scbmssql"
  description       = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
}

variable "instance_class" {
  default           = "db.t2.micro"
  description       = "The instance type of the RDS instance"
}

variable "allocated_storage" {
  default           = 20
  description       = "The allocated storage in gigabytes"
}

variable "storage_encrypted" {
  default           = "false"
  description       = "Specifies whether the DB instance is encrypted. DB Engine sqlserver-ex does not support encryption at rest"
}

variable "name" {
  default           = ""
  description       = "The database name. Should be set to null for engine: sqlserver-ex"
}

variable "username" {
  default           = "scb"
  description       = "Username for the database"
}

variable "password" {
  default           = "password123"
  description       = "Password for the database"
}

variable "vpc_security_group_ids" {
  description       = "Subnet ID where the isntance has to be created"
  type              = "list"
  default           = ["sg-13d7a962"]
}

variable "subnet_ids" {
  description       = "A list of subnet IDS"
  type              = "list"
  default           = ["subnet-185f2f30", "subnet-ac1479d5"]
}

variable "iam_database_authentication_enabled" {
  default           = "false"
  description       = "Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
}