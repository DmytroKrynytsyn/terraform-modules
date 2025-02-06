### [configuration/prometheus-grafana-cluster/README.md](configuration/prometheus-grafana-cluster/README.md)
```md
# Prometheus and Grafana Cluster Module

This Terraform module creates a Prometheus and Grafana cluster on AWS.

## Usage

```hcl
module "prometheus_grafana_cluster" {
  source = "../path/to/prometheus-grafana-cluster"

  ami_id           = "ami-12345678"
  instance_type    = "t2.micro"
  key_name         = "my-key"
  stack_name       = "my-stack"
  cluster_name     = "my-cluster"
  prometheus_instance_role = "prometheus-role"
  grafana_instance_role    = "grafana-role"
  my_ip            = "YOUR_IP/CIDR"
  vpc_id           = "vpc-12345678"
}