variable "bucketname" {
    type = string
    description = "Variable for S3 bucket name. Bucket name has to be unique, lower case and no special characters."
    default = "terraform-module-test-bucket-nur"
}

variable "env" {
    type = string
    description = "Environment Variable"
    default = "dev"
}

variable "bucket_acl" {
    type = string
    description = "Bucket level Access Control List. Values can be 'public' or 'private'. "
    default = "private"
}
