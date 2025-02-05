variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "my_ip" {
  description = "The CIDR allowed to access the instance."
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
  default    = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the EC2 instance."
}

variable "stack_name" {
  description = "The name of the stack."
}

variable "cluster_name" {
  description = "The name of the cluster."
}  

variable "redis_primary_instance_role" {
  description = "The role of the primary Redis instance."
} 

variable "redis_secondary_instance_role" {
  description = "The role of the secondary Redis instance."
} 

