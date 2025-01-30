output "private_ips" {
    description = "Private IPs of all instances"
    value       = aws_instance.example.*.private_ip
}