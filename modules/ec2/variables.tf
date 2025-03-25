variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "env" {
  description = "The environment (dev, prod, etc.)"
  type        = string
}

variable "key_name" {
  description = "The EC2 key pair name"
  type        = string
}