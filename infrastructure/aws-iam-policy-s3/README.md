### [infrastructure/aws-iam-policy-s3/README.md](infrastructure/aws-iam-policy-s3/README.md)
```md
# AWS IAM Policy for S3 Module

This Terraform module creates an IAM role and policy for accessing an S3 bucket.

## Usage

```hcl
module "iam_s3_policy" {
  source = "../path/to/aws-iam-policy-s3"

  s3_bucket_name = "my-s3-bucket"
  stack_name     = "my-stack"
  cluster_name   = "my-cluster"
}