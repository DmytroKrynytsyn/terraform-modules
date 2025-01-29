# Terraform Security Group Module

This module creates a security group in AWS and dynamically generates ingress rules based on a list of ports provided as input.

## Usage

```hcl
module "security_group" {
  source   = "./terraform-security-group-module"
  my_ip    = "YOUR_IP/CIDR"
  vpc_id   = "YOUR_VPC_ID"
  ingress_ports    = [80, 443]  # List of ports to open
  tags     = {
    Name = "MySecurityGroup"
  }
}
```

## Input Variables

- `my_ip`: The CIDR allowed to access the instance.
- `vpc_id`: The ID of the VPC.
- `ingress_ports`: A list of ports to open in the security group.
- `tags`: A map of tags to apply to the security group.

## Outputs

- `security_group_id`: The ID of the created security group.