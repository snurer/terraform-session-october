data "terraform_remote_state" "db" { #trying to data source of out tfstate
  backend = "s3"
  config = {
    bucket = "aws-session-may22-remote-backend"
    region = "us-west-2"
    key    = "session-7/backend/terraform.tfstate"
  }
}