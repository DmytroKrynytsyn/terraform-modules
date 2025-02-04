

module "security_group" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/security-group"
  my_ip    = var.my_ip
  vpc_id   = var.vpc_id
  ingress_ports    = [22, 80, 19530] 

  tags = {
      "StackName" = var.stack_name
      "ClusterName" = var.cluster_name
    }
}

module "iam_s3_policy" {
  source = "git::https://github.com/DmytroKrynytsyn/terraform-modules.git//infrastructure/aws-iam-policy-s3"
  s3_bucket_name = var.s3_bucket_name

  tags = {
      "StackName" = var.stack_name
      "ClusterName" = var.cluster_name
    }
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "ec2-instance-profile"
  role = iam_s3_policy.ec2_role.name
}

resource "aws_instance" "vector_db" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.security_group.name]

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
