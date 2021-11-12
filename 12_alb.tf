resource "aws_lb" "jinseong_alb" {
  name               = "jinseong-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.jinseong_sg.id]
  subnets = [
    aws_subnet.jinseong_subnet_01.id,
    aws_subnet.jinseong_subnet_03.id
  ]

  tags = {
    "Name" = "jinseong-alb"
  }
}

output "alb_dns" {
  value = aws_lb.jinseong_alb.dns_name
}