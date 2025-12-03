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
