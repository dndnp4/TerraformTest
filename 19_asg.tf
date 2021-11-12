resource "aws_autoscaling_group" "jinseong_asg" {
  name                      = "jinseong-asg"
  min_size                  = 2
  max_size                  = 10
  desired_capacity          = 2
  health_check_grace_period = 10
  health_check_type         = "EC2"
  force_delete              = true
  launch_configuration      = aws_launch_configuration.jinseong_aslc.name
  vpc_zone_identifier = [
    aws_subnet.jinseong_subnet_01.id,
    aws_subnet.jinseong_subnet_03.id
  ]
}
