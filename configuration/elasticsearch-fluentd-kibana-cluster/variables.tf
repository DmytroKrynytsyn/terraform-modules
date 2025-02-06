variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
}

variable "elasticserch_instance_type" {
  description = "The instance type to use for the BIG EC2 instance."
}

variable "my_ip" {
  description = "The CIDR allowed to access the instance."
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

variable "elasticserch_instance_role" {
  description = "The role of the Elasticserch instance."
} 

variable "kibana_instance_role" {
  description = "The role of the Kibana instance."
} 

variable "fluentd_instance_role" {
  description = "The role of the Fluentd instance."
} 