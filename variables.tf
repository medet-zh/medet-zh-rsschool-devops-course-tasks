variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "RS_School_VPC"
}

variable "ig_name" {
  description = "Name of IG"
  type        = string
  default     = "RS_School_Internet_Gateway"
}

variable "public_route_table_name" {
  description = "Name of Public Route Table"
  type        = string
  default     = "RS_School_Public_Route_Table"
}

variable "private_route_table_name" {
  description = "Name of Private Route Table"
  type        = string
  default     = "RS_School_Private_Route_Table"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "11.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cidr_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["11.0.1.0/24", "11.0.3.0/24", "11.0.5.0/24"]
}

variable "cidr_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["11.0.2.0/24", "11.0.4.0/24", "11.0.6.0/24"]
}

