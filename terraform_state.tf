terraform {
  backend "s3" {
    bucket = "terraform-clickmark-tf"
    key    = "terraform-infra-db/terraform.tfstate"
    region = "us-east-1"
  }
}