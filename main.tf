provider "aws" {
  region = "us-west-2"
}

module "iac-modulo-s3" {
  source = "../iac-modulo-s3"
  # source = "github.com/marcelomansur/iac-modulo-s3.git"

  bucket_name = "my-bucket-12032021"
  acl         = "public-read"
  object_name = "exemplo"
  object_source = "./README.md"
}
