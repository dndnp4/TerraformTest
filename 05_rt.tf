resource "aws_route_table" "jinseong_rt" {
    vpc_id = aws_vpc.JS-VPC.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.jinseong_igw.id
    }
    
    tags = {
      "Name" = "jinseong_rt"
    }
}