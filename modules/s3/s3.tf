resource "aws_s3_bucket" "b" {
    bucket = "${var.env}-${var.bucketname}"
    acl = var.bucket_acl
}