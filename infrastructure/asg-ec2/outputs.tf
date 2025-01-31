output "private_ips" {
  value = aws_autoscaling_group.instanes.instances[*].private_ip
}