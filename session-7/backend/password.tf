resource "random_password" "db_password" {
  length           = 16
  special          = true
  override_special = "%x_"
}

# A Terraform way to generate a password.
# Then we can add random_password.db_password.result to our configuration files to use this generated password.