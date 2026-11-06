provider "aws" {
  region = var.aws_region

  # Authenticate with your local AWS CLI profile, IAM Identity Center, or another
  # approved short-lived credential source. Never put credentials in this file.
}
