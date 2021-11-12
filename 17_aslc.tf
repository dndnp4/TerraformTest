resource "aws_launch_configuration" "jinseong_aslc" {
  name_prefix          = "jinseong-autoweb-"
  image_id             = aws_ami_from_instance.jinseong_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.jinseong_sg.id]
  key_name             = aws_key_pair.jinseong_key.key_name

  lifecycle {
    create_before_destroy = true
  }
}
