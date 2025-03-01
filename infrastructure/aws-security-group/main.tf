data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_security_group" "sg" {

  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      self        = true
      cidr_blocks  = [var.my_ip, data.aws_vpc.selected.cidr_block]
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