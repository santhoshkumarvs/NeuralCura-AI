terraform {
  backend "s3" {
    bucket         = "neuralcura-terraform-state"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "neuralcura-locks"
    encrypt        = true
  }
}
