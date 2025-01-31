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

variable "tags" {
  description = "The tags to apply to the security group."
  type        = map(string)
}

variable "key_name" {
  description = "The key name to use for the instances"
  type        = string
}