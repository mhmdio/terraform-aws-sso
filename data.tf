data "aws_organizations_organization" "this" {}

data "aws_ssoadmin_instances" "this" {}

data "aws_identitystore_group" "this" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]
  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.group_display_name
  }
}

# Future use
# data "aws_identitystore_user" "this" {
#
# }
