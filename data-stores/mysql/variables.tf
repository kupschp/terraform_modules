variable "db_username" {
  description = "database username"
  type = string
  sensitive = true
}

variable "db_password" {
  description = "database password"
  type = string
  sensitive = true
}

variable "db_instance_type" {
  description = "db instance type"
  type = string
}

variable "identifier_prefix" {
  description = "database prefix"
  type = string
}

variable "db_name" {
  description = "database name"
  type = string
}

variable "db_storage_size" {
  description = "database storage size"
  type = number
}

variable "backup_retention_period" {
  description = "days to retain backups"
  type = number
  default = null
}

variable "replicate_source_db" {
  description = "if specified, replicate db"
  type = string
  default = null
}