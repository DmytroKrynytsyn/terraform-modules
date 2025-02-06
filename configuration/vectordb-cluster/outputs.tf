
output "vectordb_instance_public_ip" {
  description = "Vector DB public IP"
  value       = aws_instance.vectordb.public_ip
}

output "rag_backend_instance_public_ip" {
  description = "RAG service public IP"
  value       = aws_instance.rag_backend.public_ip
}