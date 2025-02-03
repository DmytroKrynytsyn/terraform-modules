
output "prometheus_instance_public_ip" {
  description = "Prometheus public IP"
  value       = aws_instance.prometheus.public_ip
}

output "grafana_instance_public_ip" {
  description = "Grafana public IP"
  value       = aws_instance.grafana.public_ip
}

output "prometheus_instance_private_ip" {
  description = "Prometheus private IP"
  value       = aws_instance.prometheus.private_ip
}

output "grafana_instance_private_ip" {
  description = "Grafana private IP"
  value       = aws_instance.grafana.private_ip
}