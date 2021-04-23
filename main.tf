provider "aws" {
    region = var.region
    shared_credentials_file = var.credentials
    }
resource "random_string" "random" {
  length = 3
  special = true
  override_special = "-"
  upper = false
}    
locals {
  cluster_name = "dev-eks-${random_string.random.result}"
  vpc_name = "eks-vpc-${random_string.random.result}"
  }