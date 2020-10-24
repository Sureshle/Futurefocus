provider "aws"{
  region 		= "ap-south-1"
}

resource "aws_ecr_repository" "foo" {
  name                 = "futurefocus"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
