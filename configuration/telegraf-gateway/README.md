### [configuration/telegraf-gateway/README.md](configuration/telegraf-gateway/README.md)
```md
# Telegraf Gateway Module

This Terraform module creates a Telegraf gateway on AWS.

## Usage

```hcl
module "telegraf_gateway" {
  source = "../path/to/telegraf-gateway"

  ami_id           = "ami-12345678"
  instance_type    = "t2.micro"
  key_name         = "my-key"
  stack_name       = "my-stack"
  gateway_name     = "my-gateway"
  telegraf_instance_role = "telegraf-role"
  my_ip            = "YOUR_IP/CIDR"
  vpc_id           = "vpc-12345678"
  s3_bucket_name   = "my-s3-bucket"
  root_volume_size = 50
}
```
```