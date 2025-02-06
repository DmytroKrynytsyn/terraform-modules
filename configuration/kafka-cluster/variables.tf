variable "vpc_id" {
  description = "The ID of the VPC."
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "my_ip" {
  description = "The CIDR allowed to access the instance."
}

variable "key_name" {
  description = "The key name to use for the EC2 instance."
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
  default    = "t2.xlarge"
}

variable "amount_of_brokers" {
  description = "Cluster size."
  default     = 3
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