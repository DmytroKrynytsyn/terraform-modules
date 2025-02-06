### [configuration/vectordb-cluster/README.md](configuration/vectordb-cluster/README.md)
```md
# VectorDB Cluster Module

This Terraform module creates a VectorDB cluster on AWS.

## Usage

```hcl
module "vectordb_cluster" {
  source = "../path/to/vectordb-cluster"

  ami_id           = "ami-12345678"
  instance_type    = "t2.micro"
  key_name         = "my-key"
  stack_name       = "my-stack"
  cluster_name     = "my-cluster"
  vectordb_instance_role = "vectordb-role"
  my_ip            = "YOUR_IP/CIDR"
  vpc_id           = "vpc-12345678"
  s3_bucket_name   = "my-s3-bucket"
  root_volume_size = 50
}