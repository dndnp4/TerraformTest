resource "aws_ami_from_instance" "jinseong_ami" {
  name               = "jinseong-ami"
  source_instance_id = aws_instance.jinseong_weba.id

  tags = {
    "Name" = "jinseong-ami"
  }
  depends_on = [
    aws_instance.jinseong_weba
  ]
}
