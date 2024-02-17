terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}
resource "aws_ecrpublic_repository" "public-repo" {
  repository_name = "my-repo"

}

output "ecr-public-details" {
  value = aws_ecrpublic_repository.public-repo.repository_uri
  
}
