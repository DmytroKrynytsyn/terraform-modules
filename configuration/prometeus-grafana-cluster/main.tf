module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-security-group"
  my_ip    = var.my_ip
  vpc_id   = var.vpc_id
  ingress_ports    = [22, 9090, 9100, 3000] 

  stack_name = var.stack_name
  cluster_name = var.cluster_name
}

resource "aws_instance" "prometheus" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [module.security_group.security_group_name]

  key_name = var.key_name

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.prometheus_instance_role
    "Name" = "${var.stack_name}-${var.cluster_name}-${var.prometheus_instance_role}"
  }
}

resource "aws_instance" "grafana" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [module.security_group.security_group_name]

  key_name = var.key_name

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.grafana_instance_role
    "Name" = "${var.stack_name}-${var.cluster_name}-${var.grafana_instance_role}"
  }
}

