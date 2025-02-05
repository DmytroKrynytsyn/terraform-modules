# Kafka Cluster Module

This Terraform module creates a Kafka cluster using AWS EC2 Auto Scaling Group (ASG) and Launch Template.

## Usage

```hcl
module "kafka_cluster" {
  source = "../path/to/kafka-cluster"

  ami_id           = "ami-12345678"
  instance_type    = "t2.micro"
  amount_of_brokers = 3
  key_name         = "my-key"
  stack_name       = "my-stack"
  cluster_name     = "my-cluster"
  my_ip            = "YOUR_IP/CIDR"
}