resource "aws_launch_template" "kafka_brokers" {
  
  image_id = var.ami_id
  instance_type = var.instance_type
  key_name  = var.key_name

  vpc_security_group_ids = var.security_group_ids

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "${var.stack_name}-${var.cluster_name}"
      
      InstanceRole = var.instance_role
      Stack = var.stack_name
      Cluster = var.cluster_name
    }
  }
}


resource "aws_autoscaling_group" "instanes" {
  name = "${var.stack_name}-${var.cluster_name}"

  desired_capacity     = var.desired_amount_of_instances
  min_size             = var.min_amount_of_instances
  max_size             = var.max_amount_of_instances

  launch_template {
    id      = aws_launch_template.kafka_brokers.id
    version = "$Latest"
  }

  vpc_zone_identifier = var.vpc_zone_identifier
}
