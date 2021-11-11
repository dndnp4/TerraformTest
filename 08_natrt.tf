resource "aws_route_table" "jinseong_rt_nat" {
    vpc_id = aws_vpc.JS-VPC.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.jinseong_nat.id
    }

    tags = {
      "Name" = "jinseong-rt-nat"
    }
}