variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "vpc_zone_identifier" {
  description = "The list of subnet IDs."
  type        = list(string)
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
