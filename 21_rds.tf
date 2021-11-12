resource "aws_db_instance" "jinseong_rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  name                   = "test"
  identifier             = "test"
  username               = "admin"
  password               = "wlstjd11!"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "ap-northeast-2a"
  vpc_security_group_ids = [aws_security_group.jinseong_sg.id]
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.jinseong_dbsb.id
  tags = {
    "Name" = "jinseong-rds"
  }
}

resource "aws_db_subnet_group" "jinseong_dbsb" {
  name = "jinseong-dbsb"
  subnet_ids = [
    aws_subnet.jinseong_subnet_02.id,
    aws_subnet.jinseong_subnet_04.id
  ]
  tags = {
    "Name" = "jinseong-dbsb"
  }
}
