variable "identifier" {
  default           = ""
  description       = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
}

variable "engine" {
  default           = "sqlserver-ex"
  description       = "The database engine to use"
}

variable "engine_version" {
  default           = "14.00.1000.169.v1"
  description       = "The engine version to use"
}

variable "major_engine_version" {
  default           = "14.00"
  description       = "The major engine version to use"
}

variable "family" {
  default           = "sqlserver-ex-14.0"
  description       = "The family of the DB parameter group"
}

variable "instance_class" {
  default           = ""
  description       = "The instance type of the RDS instance"
}

variable "allocated_storage" {
  default           = 20
  description       = "The allocated storage in gigabytes"
}

variable "storage_encrypted" {
  default           = "false"
  description       = "Specifies whether the DB instance is encrypted"
}

variable "name" {
  default           = ""
  description       = "The database name. Should be set to null for engine: sqlserver-ex"
}

variable "username" {
  default           = ""
  description       = "Username for the database"
}

variable "password" {
  default           = ""
  description       = "Password for the database"
}

variable "port" {
  default           = "1433"
  description       = "The port on which the DB accepts connections"
}

# optional
variable "vpc_security_group_ids" {
  description       = "Subnet ID where the isntance has to be created"
  type              = "list"
  default           = []
}

variable "subnet_ids" {
  description       = "A list of subnet IDS"
  type              = "list"
  default           = []
}

variable "maintenance_window" {
  default           = "Mon:00:00-Mon:03:00"
  description       = "The window to perform maintenance in"
}

variable "backup_window" {
  default           = "03:00-06:00"
  description       = " The daily time range (in UTC) during which automated backups are created if they are enabled. Must not overlap with maintenance_window"
}

variable "backup_retention_period" {
  default           = "0"
  description       = "The days to retain backups for"
}

variable "publicly_accessible" {
  default           = "false"
  description       = "Bool to control if instance is publicly accessible"
}

variable "multi_az" {
  default           = "false"
  description       = "Specifies if the RDS instance is multi-AZ"
}

variable "final_snapshot_identifier" {
  default           = "scbmssql-snapshot"
  description       = "Database snapshot identifier"
}

variable "deletion_protection" {
  default           = "false"
  description       = "The database can't be deleted when this value is set to true"
}

variable "allow_major_version_upgrade" {
  default           = "false"
  description       = "Indicates that major version upgrades are allowed"
}

variable "auto_minor_version_upgrade" {
  default           = "true"
  description       = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
}

variable "iam_database_authentication_enabled" {
  default           = "true"
  description       = "Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
}

variable "license_model" {
  default           = "license-included"
  description       = "License model information for the DB instance. Valid values: license-included | bring-your-own-license | general-public-license"
}

variable "timezone" {
  default           = "Central Standard Time"
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