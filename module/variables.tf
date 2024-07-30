variable "ami-image-name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "vpc" {
  type = string
}

variable "subnet" {
  type = any
}

variable "ec2" {
  type = any  
}