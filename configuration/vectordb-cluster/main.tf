module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-security-group"
  my_ip    = var.my_ip
  vpc_id   = var.vpc_id
  ingress_ports    = [22, 80, 19530] 

  stack_name = var.stack_name
  cluster_name = var.cluster_name
}

module "iam_s3_policy" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-iam-policy-s3"
  s3_bucket_name = var.s3_bucket_name
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "ec2-instance-profile"
  role = module.iam_s3_policy.ec2_role_name
}

resource "aws_instance" "vectordb" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [module.security_group.security_group_name]

  key_name = var.key_name

  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

  root_block_device {
    volume_type = "gp2"
    volume_size = var.root_volume_size
  }

  tags = {
    "StackName" = var.stack_name
    "ClusterName" = var.cluster_name
    "InstanceRole" =  var.vectordb_instance_role
  }
}
