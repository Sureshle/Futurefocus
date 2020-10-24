provider "aws"{
  region 		= "ap-south-1"
}

# s3 Bucket with Website settings
resource "aws_s3_bucket" "site_bucket" {
  bucket = "futurefocus"
  acl = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
