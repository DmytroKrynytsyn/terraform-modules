variable "vpc_zone_identifier" {
  description = "A list of subnet IDs to launch resources in."
  type        = list(string)
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the instances"
  type        = string
}

variable "desired_amount_of_instances" {
  description = "The desired number of instances in the ASG"
  type        = number
}

variable "min_amount_of_instances" {
  description = "The minimum number of instances in the ASG"
  type        = number
}

variable "max_amount_of_instances" {
  description = "The maximum number of instances in the ASG"
  type        = number
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the instances"
  type        = list(string)
}

variable "key_name" {
  description = "The key name to use for the instances"
  type        = string
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