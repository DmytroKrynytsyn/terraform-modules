module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-security-group"
  my_ip    = var.my_ip
  vpc_id   = var.vpc_id
  ingress_ports    = [22, 80, 8089, 9100] 

  stack_name = var.stack_name
  cluster_name = var.cluster_name
}

resource "aws_instance" "telegraf_gateway" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [module.security_group.security_group_name]

  key_name = var.key_name

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.instance_role
    "Name" = "${var.stack_name}-${var.cluster_name}"
  }
}
