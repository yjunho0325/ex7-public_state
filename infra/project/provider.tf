terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket         = "std08-s3-state-bucket"
    key            = "TerraformState/EX/ex7-public-state/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "std08-terraform-lock-table"
    encrypt        = true # 파일 암호화
  }
}
provider "aws" {
  region = "ap-southeast-2"
}
