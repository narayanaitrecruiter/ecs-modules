
########################################################################################################################
## Network variables
########################################################################################################################



variable "vpc_cidr_block" {
  description = "CIDR block for the VPC network"
  default     = "10.0.0.0/16"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "az_count" {
  description = "Describes how many availability zones are used"
  default     = 3
  type        = number
}

########################################################################################################################
## Service variables
########################################################################################################################

variable "namespace" {
  description = "Namespace for the resources"
  default     = "QA-cluster"
  type        = string
  
}

variable "environment" {
  description = "Environment for deployment (like dev or staging)"
  default     = "QA-cluster"
  type        = string
}