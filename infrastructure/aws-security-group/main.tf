provider "aws" {
  region = var.aws_region  
}

data "aws_vpc" "default" {
  default = true
}

data "http" "my_ip" {
  url = "https://api.ipify.org/?format=text"
}

resource "aws_security_group" "sg" {

  vpc_id = data.aws_vpc.default.id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      self        = true
      cidr_blocks  = [data.aws_vpc.default.cidr_block, "${chomp(data.http.my_ip.response_body)}/32"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.stack_name}-${var.cluster_name}"
    StackName = var.stack_name
    ClusterName = var.cluster_name
  }
}
