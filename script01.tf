#provider plugin
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
#provider info
provider "aws" {
  region = "ap-south-1"
}
#provider recourse
resource "aws_instance" "web" {
  ami           = "ami-0b9ecf71fe947bbdd"
  instance_type = "t2.medium"
count ="5"

  tags = {
    Name = "HelloWorld"
  }
}