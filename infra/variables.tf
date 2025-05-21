variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}
