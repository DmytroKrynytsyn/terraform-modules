variable "my_ip" {
  description = "The CIDR allowed to access the instance."
}

variable "vpc_id" {
  description = "The ID of the VPC."
}

variable "ingress_ports" {
  description = "The list of ports to open in the security group."
  type        = list(number)
}

variable "stack_name" {
  description = "The name of the stack."
}

variable "cluster_name" {
  description = "The name of the cluster."
}
