provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "neuralcura-cluster"
  cluster_version = "1.27"
  subnets         = ["subnet-xxxx", "subnet-yyyy"]
  vpc_id          = "vpc-xxxx"

  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}
