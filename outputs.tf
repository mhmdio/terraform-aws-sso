output "account_names" {
  value = data.aws_organizations_organization.this.accounts[*].name
}

output "account_ids" {
  value = data.aws_organizations_organization.this.accounts[*].id
}

output "ssoadmin_instance_arn" {
  value = tolist(data.aws_ssoadmin_instances.this.arns)[0]
}

output "identity_store_id" {
  value = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]
}
