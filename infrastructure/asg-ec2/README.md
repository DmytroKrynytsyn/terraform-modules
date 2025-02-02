# AWS EC2 Auto Scaling Group Module

This Terraform module creates an AWS EC2 Auto Scaling Group (ASG) with a launch template for Kafka brokers.

## Usage

```hcl
module "asg_ec2" {
  source = "../path/to/asg-ec2"

  ami_id                      = "ami-12345678"
  instance_type               = "t2.micro"
  desired_amount_of_instances = 2
  max_size                    = 3
  min_size                    = 1
  subnet_ids                  = ["subnet-12345678", "subnet-87654321"]
  security_group_id           = "sg-12345678"
}