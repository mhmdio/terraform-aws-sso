provider "aws" {
  region = "eu-west-1"
}

module "permission_set" {
  source = "../../"

  name               = "DevAdmins"
  description        = "DevAdmins permission set"
  group_display_name = "Developers"
  session_duration   = "PT2H"

  account_ids = [
    "123456789000",
    "123456789000"
  ]

  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]

  tags = {
    Just_For_Testing = "True"
    Remove_Me        = "Please"
  }
}


