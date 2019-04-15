variable "identifier" {
  default           = "scbmysql"
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
  description       = "Specifies whether the DB instance is encrypted. DB Instance class db.t2.micro does not support encryption at rest"
}

variable "username" {
  default           = "scb"
  description       = "Username for the database"
}

variable "password" {
  default           = "password"
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