locals {
  name = "aws-${var.region}-${var.env}-${var.env}-${var.project}-rtype"
  common_tags = {
    Team        = "DevOps"
    Owner       = "Nur"
    Environment = var.env
    Project     = var.project
    Managed_by  = "Terraform"
  }
}


# Local is used for something that is repeated over and over again
# Warning : Do not overuse locals. It will make your code complicated.
