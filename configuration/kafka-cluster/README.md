# Kafka Cluster Module

This Terraform module creates a Kafka cluster using AWS EC2 Auto Scaling Group (ASG) and Launch Template.

## Usage

```hcl
module "kafka_cluster" {
  source = "../path/to/kafka-cluster"

  ami_id                      = "ami-12345678"
  instance_type               = "t2.micro"
  desired_amount_of_instances = 3
  max_size                    = 5
  min_size                    = 1
  subnet_ids                  = ["subnet-12345678", "subnet-87654321"]
  security_group_id           = "sg-12345678"
}