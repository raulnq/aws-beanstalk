variable "application" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "ec2_subnets" {
  type = string
}

variable "elb_subnets" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "keypair" {
  type = string
}

variable "bucket" {
  type = string
}

variable "health_check_path" {
  type = string
}