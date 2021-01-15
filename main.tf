resource "aws_ssoadmin_account_assignment" "this" {
  instance_arn       = aws_ssoadmin_permission_set.this.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this.arn
  principal_id       = data.aws_identitystore_group.this.group_id
  principal_type     = "GROUP"
  target_type        = "AWS_ACCOUNT"
  target_id          = var.target_id
}

resource "aws_ssoadmin_permission_set" "this" {
  name             = var.name
  description      = var.description
  instance_arn     = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  relay_state      = var.relay_state
  session_duration = var.session_duration
  tags             = var.tags
}

resource "aws_ssoadmin_managed_policy_attachment" "this" {
  instance_arn       = aws_ssoadmin_permission_set.this.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this.arn
  managed_policy_arn = var.managed_policy_arn
}


# Future use
# resource "aws_ssoadmin_permission_set_inline_policy" "this" {
#   inline_policy      = var.inline_policy
#   instance_arn       = aws_ssoadmin_permission_set.this.instance_arn
#   permission_set_arn = aws_ssoadmin_permission_set.this.arn
# }
