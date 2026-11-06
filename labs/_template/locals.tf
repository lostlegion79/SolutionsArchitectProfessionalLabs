locals {
  common_tags = {
    Project   = "SolutionsArchitectProfessionalLabs"
    Lab       = var.lab_name
    ManagedBy = "Terraform"
  }
}
