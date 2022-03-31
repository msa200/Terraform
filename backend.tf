terraform {
  backend "s3" {
    bucket         = "msa200"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "backend"
  }
}
