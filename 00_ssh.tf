resource "aws_key_pair" "jinseong_key" {
    key_name = "jinseong-key"
    public_key = file("../JSkey.pub")
    #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4MulqEk8uScp6d2iu/OSXlniFof+b4SbXtT6knJkuMu+vxcyTPtIulddfeoBRVsxtzVEs2oB89wh4QX6qgp3nbpElQ9Xj/SxIdyNcetJUuNL11dSpZjcT1+xPnAUePHIbXdu9Ln+NcqTqo6+XYuuD4CQZpUmRO+cHeX8jE62C+eztRnX+Jq9OYkV+JrYYbhSuWCBqqYt/ZhGYJxPr6TU4keVVXbXnpqgo0I/lQIViyS5uhL0G9Hp4R/EnXCgWjMK9ObW1AlszupcWmo3aQn6slF+mIzpRanb88qVZJOdkJ1sR82wI1cdAUjZAf3oIGtaQdAGdS8P23wY/ssnrL8smPHzaNQj5QzrTb7vBW1Es7QyTur9h/3+E5Utwwg8oYMrU254AFR8b0YNj4ETwzg7g7EQu9ClW38Mug30BrBWJ1UbDEFLdD4KbohQCTn3hvLsXbJKlmhy9bLDv6/YzjoaFx2wG8wqhCukuY3jQJtQ8OcuYiZ9YxerZqf6QEblniS0="
}