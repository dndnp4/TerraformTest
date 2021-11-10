provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_vpc" "JS-VPC" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "Name" = "JS-VPC"
    }
}