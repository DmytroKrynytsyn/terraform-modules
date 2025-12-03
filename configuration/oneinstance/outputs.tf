output "oneinstance_private_ips" {
    value = module.asg-ec2.private_ips
}

output "oneinstance_public_ips" {
    value = module.asg-ec2.public_ips
}
