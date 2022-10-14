resource "aws_instance" "first_ec2" {
  ami           = "ami-08e2d37b6a0129927"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}

// resource = block
// aws instance = first label = resource type = predefined by Terraform
// first_ec2 = second label = logical name or Id (it has to be unique) = defined by Author
// argument = consist of key/value, name/value = Configuration of your resource
// - key is predefined by Terraform
// - value is defined by Author

# Each Terraform Configuration file has an extension called ".tf"

# Terraform has 2 types of Blocks
// 1. Resource       = Create and manage resources, services, infrastructures
// 2. Data Source    =

// Each block expect 2 labels, Resource expects 2 labels, 