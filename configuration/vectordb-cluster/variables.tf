variable "vpc_id" {
  description = "The ID of the VPC."
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
}

variable "my_ip" {
  description = "The CIDR allowed to access the instance."
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance."
}

variable "root_volume_size" {
  description = "The size of the root volume."
}

variable "s3_bucket_name" {
  description = "S3 bicket for vector db."
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

variable "vectordb_instance_role" {
  description = "The role of the Prometheus instance."
} 

variable "iam_s3_policy" {
  description = "The IAM policy for accessing S3."
}