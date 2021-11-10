resource "aws_internet_gateway" "jinseong_igw" {
    vpc_id = aws_vpc.JS-VPC.id

    tags = {
      "Name" = "jinseong_igw"
    }
}