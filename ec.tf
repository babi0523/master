terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "2.33.0"
    }
  }
}

provider "aws" {
    region     = "us-east-1"
    access_key = "AKIA33MD5O7GDGBF32ML"
    secret_key = "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" 
}

resource "aws_instance" "fromtf" {
    ami = "ami-04cb4ca688797756f"
    tags = {
      Name ="from terraform"
    }
    key_name = "doc"
    vpc_security_group_ids = ["sg-05cf05ec66d5cfc06"]
    instance_type = "t2.micro"

}
