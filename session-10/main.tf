module "ec2" {
    source         = "github.com/snurer/terraform-session-october//modules/ec2?ref=v1.0.0"
    env            = "dev"
    instance_type  = "t2.micro"
    ami            = "ami-0d593311db5abb72b"
}

module "vpc_example_simple_vpc" {
  source = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.18.1"
}