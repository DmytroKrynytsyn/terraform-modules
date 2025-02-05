### [configuration/redis-cluster/README.md](configuration/redis-cluster/README.md)
```md
# Redis Cluster Module

This Terraform module creates a Redis cluster on AWS.

## Usage

```hcl
module "redis_cluster" {
  source = "../path/to/redis-cluster"

  ami_id           = "ami-12345678"
  instance_type    = "t2.micro"
  key_name         = "my-key"
  stack_name       = "my-stack"
  cluster_name     = "my-cluster"
  redis_primary_instance_role = "redis-primary-role"
  redis_secondary_instance_role = "redis-secondary-role"
  my_ip            = "YOUR_IP/CIDR"
  vpc_id           = "vpc-12345678"
}