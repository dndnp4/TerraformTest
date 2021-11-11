resource "aws_route_table_association" "jinseong_rtass_public_a" {
    subnet_id      = aws_subnet.jinseong_subnet_01.id
    route_table_id = aws_route_table.jinseong_rt.id
}

resource "aws_route_table_association" "jinseong_rtass_public_c" {
    subnet_id      = aws_subnet.jinseong_subnet_03.id
    route_table_id = aws_route_table.jinseong_rt.id
}
