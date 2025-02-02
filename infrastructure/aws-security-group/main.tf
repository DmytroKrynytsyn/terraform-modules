
resource "aws_security_group" "sg" {

  name_prefix = var.tags["Name"]

  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      self        = true
      cidr_blocks  = [var.my_ip]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.tags["StackName"] + var.tags["ClusterName"]
    Stack = var.tags["StackName"]
  }
}