variable "my_ip" {
  description = "The CIDR allowed to access the instance."
}

variable "vpc_id" {
  description = "The ID of the VPC."
}

variable "tags" {
  description = "The tags to apply to the security group."
  type        = map(string)
}

variable "ingress_ports" {
  description = "The list of ports to open in the security group."
  type        = list(number)
}

