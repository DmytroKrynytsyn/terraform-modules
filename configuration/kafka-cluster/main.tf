module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-security-group"
  my_ip    = var.my_ip
  vpc_id   = data.aws_vpc.default.id
  ingress_ports    = [22, 9092, 9093] 

   tags = {
      "StackName" = var.stack_name
      "ClusterName" = var.cluster_name
    }
}

module "asg-ec2" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/asg-ec2"
  
  desired_amount_of_instances = var.amount_of_brokers
  min_amount_of_instances = var.amount_of_brokers
  max_amount_of_instances = var.amount_of_brokers * 2
  instance_type = var.instance_type
  ami_id = var.ami_id
  vpc_zone_identifier = data.aws_subnets.default.ids

  key_name = var.key_name

  security_group_ids = [module.security_group.security_group_id]

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.instance_role
  }
}