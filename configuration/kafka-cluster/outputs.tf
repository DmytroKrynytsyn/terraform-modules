output "kafka_brokers_private_ips" {
    value = module.asg-ec2.private_ips
}

output "kafka_brokers_public_ips" {
    value = module.asg-ec2.public_ips
}