module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/security-group"
  my_ip    = var.my_ip
  vpc_id   = var.vpc_id
  ingress_ports    = [22, 5601, 24224, 9200] 

  tags = {
      "StackName" = var.stack_name
      "ClusterName" = var.cluster_name
    }
}

resource "aws_instance" "fluentd" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.security_group.name]

  key_name = var.key_name

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.fluentd_instance_role
  }
}

resource "aws_instance" "kibana" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.security_group.name]

  key_name = var.key_name

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.kibana_instance_role
  }
}

resource "aws_instance" "elasticsearch" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.security_group.name]

  key_name = var.key_name

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.elasticsearch_instance_role
  }
}