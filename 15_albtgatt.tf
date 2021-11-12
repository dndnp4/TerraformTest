resource "aws_lb_target_group_attachment" "jinseong_tgatt" {
  target_group_arn = aws_lb_target_group.jinseong_albtg.arn
  target_id        = aws_instance.jinseong_weba.id
  port             = 80
}
