variable "ami" {
    type = string
    description = "Amazon Machine Image"
    default = "ami-08e2d37b6a0129927"
}

variable "env" {
    type = string
    description = "Environment Variable"
    default = "dev"
}

variable "instance_type" {
    type = string
    description = "Size of EC2"
    default = "t2.micro"
}

variable "s3_bucket_name" {
    type = string
    description = "S3 bucket name for Application to upload images"
    default = "test"
}