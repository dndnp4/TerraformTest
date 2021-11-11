resource "aws_eip" "jinseong_eip_nat" {
    vpc = true
}

resource "aws_nat_gateway" "jinseong_nat" {
    allocation_id = aws_eip.jinseong_eip_nat.id
    subnet_id = aws_subnet.jinseong_subnet_01.id
    tags = {
      "Name" = "jinseong-nat"
    }
    depends_on = [
        aws_internet_gateway.jinseong_igw
    ]
}