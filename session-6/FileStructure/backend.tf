terraform {
  backend "s3" {
    bucket         = "aws-session-may22-remote-backend"
    region         = "us-west-2"
    key            = "session-6/_env_/terraform.tfstate"
    dynamodb_table = "terraform-may2022-state-lock-table"
  }
}