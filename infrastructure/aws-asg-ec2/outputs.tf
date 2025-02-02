data "aws_instances" "asg_instances" {
  filter {
    name   = "tag:aws:autoscaling:groupName"
    values = [aws_autoscaling_group.instanes.name]
  }
}

output "private_ips" {
  value = data.aws_instances.asg_instances.private_ips
}