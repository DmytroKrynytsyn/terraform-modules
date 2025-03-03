
output "telegraf_gateway_instance_public_ip" {
  description = "Telegraf public IP"
  value       = aws_instance.telegraf_gateway.public_ip
}

output "telegraf_gateway_instance_private_ip" {
  description = "Telegraf private IP"
  value       = aws_instance.telegraf_gateway.private_ip
}
