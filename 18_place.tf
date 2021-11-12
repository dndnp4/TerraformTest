resource "aws_placement_group" "jinseong_place" {
  name = "jinseong-place"
  strategy = "cluster"
}