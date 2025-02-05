# AWS EC2 Auto Scaling Group Module

This Terraform module creates an AWS EC2 Auto Scaling Group (ASG) with a launch template for Kafka brokers.

## Usage

```hcl
module "asg_ec2" {
  source = "../path/to/asg-ec2"

  ami_id                      = "ami-12345678"
  instance_type               = "t2.micro"
  desired_amount_of_instances = 2
  min_amount_of_instances     = 1
  max_amount_of_instances     = 3
  vpc_zone_identifier         = ["subnet-12345678", "subnet-87654321"]
  security_group_ids          = ["sg-12345678"]
  key_name                    = "my-key"
  stack_name                  = "my-stack"
  cluster_name                = "my-cluster"
  instance_role               = "instance-role"
}