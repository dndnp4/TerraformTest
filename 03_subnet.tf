resource "aws_subnet" "jinseong_subnet_01" {
    vpc_id = aws_vpc.JS-VPC.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
      "Name" = "jinseong_subnet_01"
    }
}

resource "aws_subnet" "jinseong_subnet_02" {
    vpc_id = aws_vpc.JS-VPC.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
      "Name" = "jinseong_subnet_02"
    }
}

resource "aws_subnet" "jinseong_subnet_03" {
    vpc_id = aws_vpc.JS-VPC.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
      "Name" = "jinseong_subnet_03"
    }
}

resource "aws_subnet" "jinseong_subnet_04" {
    vpc_id = aws_vpc.JS-VPC.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
      "Name" = "jinseong_subnet_04"
    }
}
