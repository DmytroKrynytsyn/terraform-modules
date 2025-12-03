variable "aws_region" {
  description = "The AWS region to launch resources in."
}

variable "availability_zone" {
  description = "The availability zone to launch the EC2 instance in."
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "key_name" {
  description = "The key name to use for the EC2 instance."
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
  default    = "t2.xlarge"
}

variable "stack_name" {
  description = "The name of the stack."
}

variable "cluster_name" {
  description = "The name of the cluster."
}  

variable "instance_role" {
  description = "The role of the instance."
}
