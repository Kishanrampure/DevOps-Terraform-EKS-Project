terraform {
  backend "s3" {
    bucket = "devopsprojectaws2"
    key    = "EKS/terraform.tfstate"
    region = "us-east-2"
  }
}