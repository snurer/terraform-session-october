module "s3" {
  // where child module is //
  source = "/home/ec2-user/terraform-session-october/modules/s3"
  // variables //
  env        = var.env
  bucketname = "terraform-module-test-bucket-nur"
  bucket_acl = "private"
}

module "ec2" {
  source         = "/home/ec2-user/terraform-session-october/modules/ec2"
  env            = var.env
  instance_type  = "t2.micro"
  ami            = "ami-08e2d37b6a0129927"
  s3_bucket_name = module.s3.s3_bucket_name # You can overwrite the default ones in child module. 

}