# AWS Config

variable "aws_access_key" {
  default = "REPLACE WITH AWS ACCESS KEY"
}

variable "aws_secret_key" {
  default = "REPLACE WITH AWS SECRET KEY"
}

variable "aws_region" {
  default = "ap-southeast-1"
}
variable "availability_zone" {}

variable "storage_sizes" {
  type = "map"
}

variable "instance_type" {}

variable "storage_types" {
  type = "map"
}
