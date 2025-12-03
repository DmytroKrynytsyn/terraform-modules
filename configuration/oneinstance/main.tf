module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-security-group"
  ingress_ports    = [22, 8428, 8429] 

  aws_region = var.aws_region

  stack_name = var.stack_name
  cluster_name = var.cluster_name
}

module "asg-ec2" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-asg-ec2"
  
  desired_amount_of_instances = 1
  min_amount_of_instances = 1 
  max_amount_of_instances = 1
  instance_type = var.instance_type
  ami_id = var.ami_id

  key_name = var.key_name

  security_group_ids = [module.security_group.security_group_id]

  stack_name = var.stack_name
  cluster_name = var.cluster_name
  instance_role =  var.instance_role
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/inventory.ini"
  content  = <<-EOF
[servers]
oneinstance ansible_host=${module.asg-ec2.public_ips[0]} 

[all:vars]
ansible_connection=ssh
ansible_python_interpreter=/usr/bin/python3
ansible_user=admin 
ansible_ssh_private_key_file=../../cks.pem
EOF
}
