variable "aws_region" {
  description = "The AWS region to launch resources in."
}

variable "availability_zone" {
  description = "The availability zone to launch the EC2 instance in."
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "my_ip" {
  description = "The CIDR allowed to access the instance."
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
  default    = "t2.xlarge"
}

variable "amount_of_brokers" {
  description = "Cluster size."
  default     = 3
}

variable "instance_tags" {
  description = "The tags to apply to the EC2 instance."
  type        = map(string)
  default     = {
    Name    = "kafka"
    Purpose = "dkedu"
    Stack   = "kafka1"
  }
}