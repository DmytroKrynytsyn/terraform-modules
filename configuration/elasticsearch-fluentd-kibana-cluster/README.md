# Elasticsearch, Fluentd, Kibana Cluster Module

This Terraform module creates an Elasticsearch, Fluentd, and Kibana cluster on AWS.

## Usage

```hcl
module "efk_cluster" {
  source = "../path/to/elasticsearch-fluentd-kibana-cluster"

  ami_id           = "ami-12345678"
  instance_type    = "t2.micro"
  key_name         = "my-key"
  stack_name       = "my-stack"
  cluster_name     = "my-cluster"
  elasticserch_instance_role = "elasticsearch-role"
  kibana_instance_role       = "kibana-role"
  fluentd_instance_role      = "fluentd-role"
  my_ip            = "YOUR_IP/CIDR"
  vpc_id           = "vpc-12345678"
}
```