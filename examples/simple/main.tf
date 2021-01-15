provider "aws" {
  region = "eu-west-1"
}

module "permission_set" {
  source = "../../"

  name               = "DevAdmins"
  description        = "DevAdmins permission set"
  group_display_name = "Developers"
  session_duration   = "PT2H"
  target_id          = "123456789000"
  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"

  tags = {
    Just_For_Testing = "True"
    Remove_Me        = "Please"
  }
}


