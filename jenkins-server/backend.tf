terraform {
  backend "s3" {
    bucket = "devopsprojectaws2"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-2"
  }
}