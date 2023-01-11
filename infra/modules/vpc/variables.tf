variable "vpc_cidr" {
  description = "CIDR block for main"
  type        = string
  default     = "10.0.0.0/16"
}
variable "vpc_tag_name" {
  description = "VPC tag name"
  type        = string
  default     = "main"
}
variable "aws_internet_gateway_tag_name" {
  description = "Internet gateway tag name"
  type        = string
  default     = "igw"
}
variable "aws_route_table_cidr_block" {
  description = "route table cidr block"
  type        = string
  default     = "0.0.0.0/0"
}
variable "availability_zones" {
  type    = string
  default = "us-east-1a"
}
