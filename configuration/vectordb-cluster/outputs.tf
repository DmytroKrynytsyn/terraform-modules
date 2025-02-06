
output "vectordb_instance_public_ip" {
  description = "Vector DB public IP"
  value       = aws_instance.vectordb.public_ip
}

output "vectordb_instance_private_ip" {
  description = "Vector DB private IP"
  value       = aws_instance.vectordb.private_ip
}
