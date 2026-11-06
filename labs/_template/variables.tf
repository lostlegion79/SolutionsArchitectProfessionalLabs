variable "aws_region" {
  description = "AWS region for this lab. Check service availability and cost first."
  type        = string
  default     = "us-east-1"
}

variable "lab_name" {
  description = "Short identifier used to name resources created by this lab."
  type        = string
  default     = "sapc02-lab"

  validation {
    condition     = can(regex("^[a-z0-9-]{1,32}$", var.lab_name))
    error_message = "lab_name must be 1-32 lowercase letters, numbers, or hyphens."
  }
}
