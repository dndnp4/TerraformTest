resource "aws_autoscaling_attachment" "jinseong_asgalbatt" {
  autoscaling_group_name = aws_autoscaling_group.jinseong_asg.id
  alb_target_group_arn = aws_lb_target_group.jinseong_albtg.arn
}