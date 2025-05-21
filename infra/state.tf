resource "aws_s3_bucket" "tf_state" {
  bucket = "neuralcura-terraform-state"
  force_destroy = true

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "tf_locks" {
  name           = "neuralcura-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "prod"
    Project     = "NeuralCura"
  }
}
