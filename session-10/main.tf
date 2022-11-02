module "ec2" {
    source         = "github.com/snurer/terraform-session-october//modules/ec2"
    env            = "dev"
    instance_type  = "t2.micro"
    ami            = "ami-0d593311db5abb72b"
}