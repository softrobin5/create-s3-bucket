terraform {
  required_version = ">=0.12"
}

provider "aws" {
  #   version = "~> 2.7"
  region = "us-east-1"
}

# resource "aws_instance" "web" {
#   count = 1
#   ami = "ami-"
#   instance_type = "t2.micro"

# # tags = {
# #   "Name" = "webinstance"
# #   ttl = "10d"
# #   owner = "satish@blotout.io"
# # }

# }

variable "bucket_name" {
}

variable "acl_value" {
  default = "private"
}

resource "aws_s3_bucket" "demos3" {
  bucket = var.bucket_name
  acl    = var.acl_value

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    test = "test123"
  }

}
