variable "vpc_id" {
  description = "default value for vpc"
  default = "non-prod-vpc"
  type = string
  
}

variable "subnet_id" {
  description = "default value for subnet"
  type = list(string)
}


variable "aurorapassword" {
  description = "Password for the Aurora database"
  type        = string
  default = "admin"
}

variable "aurorausername" {
  description = "Username for the Aurora database"
  type        = string
  default = "aurorapassword"
}

variable "postgresusername" {
  description = "Password for the Aurora database"
  type        = string
  default = "admin"
}

variable "postgrespassword" {
  description = "Username for the Aurora database"
  type        = string
  default = "postgrespassword"
}

variable "mysqlusername" {
  description = "Password for the Aurora database"
  type        = string
  default = "admin"
}

variable "mysqlpassword" {
  description = "Username for the Aurora database"
  type        = string
  default = "mysqlpassword"
}

variable "availability_zones" {
  description = "Availability zones to use"
  type        = list
  default     = ["us-west-2a"]  
  
}