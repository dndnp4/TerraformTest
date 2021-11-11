resource "aws_route_table_association" "jinseong_natrtass_a" {
    subnet_id = aws_subnet.jinseong_subnet_02.id
    route_table_id = aws_route_table.jinseong_rt_nat.id
}

resource "aws_route_table_association" "jinseong_natrtass_c" {
    subnet_id = aws_subnet.jinseong_subnet_04.id
    route_table_id = aws_route_table.jinseong_rt_nat.id
}