# Terraform Modules for AWS

This repository contains Terraform modules for managing AWS infrastructure. Each module is designed to be reusable and configurable, allowing you to easily deploy and manage various AWS services.

## Modules

### [Elasticsearch, Fluentd, Kibana Cluster Module](configuration/elasticsearch-fluentd-kibana-cluster/README.md)

This module creates an Elasticsearch, Fluentd, and Kibana cluster on AWS.

### [Kafka Cluster Module](configuration/kafka-cluster/README.md)

This module creates a Kafka cluster using AWS EC2 Auto Scaling Group (ASG) and Launch Template.

### [Prometheus and Grafana Cluster Module](configuration/prometheus-grafana-cluster/README.md)

This module creates a Prometheus and Grafana cluster on AWS.

### [Redis Cluster Module](configuration/redis-cluster/README.md)

This module creates a Redis cluster on AWS.

### [VectorDB Cluster Module](configuration/vectordb-cluster/README.md)

This module creates a VectorDB cluster on AWS.

### [AWS EC2 Auto Scaling Group Module](infrastructure/aws-asg-ec2/README.md)

This module creates an AWS EC2 Auto Scaling Group (ASG) with a launch template for Kafka brokers.

### [Terraform Security Group Module](infrastructure/aws-security-group/README.md)

This module creates a security group in AWS and dynamically generates ingress rules based on a list of ports provided as input.

### [AWS IAM Policy for S3 Module](infrastructure/aws-iam-policy-s3/README.md)

This module creates an IAM role and policy for accessing an S3 bucket.

## Usage

Each module has its own README file with detailed usage instructions. You can refer to the individual README files for more information on how to use each module.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
