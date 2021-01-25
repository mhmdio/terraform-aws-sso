variable "group_display_name" {
  type        = string
  description = "The group's display name value"
}

variable "name" {
  type        = string
  description = "(Required, Forces new resource) The name of the Permission Set."
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Key-value map of resource tags."
  default = {
    Terraform = "Yes"
  }
}
variable "description" {
  type        = string
  default     = ""
  description = "(Optional) The description of the Permission Set."
}
variable "relay_state" {
  type        = string
  default     = null
  description = "(Optional) The relay state URL used to redirect users within the application during the federation authentication process."
}
variable "session_duration" {
  type        = string
  default     = "PT1H"
  description = "(Optional) The length of time that the application user sessions are valid in the ISO-8601 standard. Default: PT1H."
}

variable "account_ids" {
  type        = list(string)
  description = "(Required, Forces new resource) An AWS account identifier, typically a 10-12 digit string."
}

variable "managed_policy_arns" {
  type        = list(string)
  description = "Managed polices ARNs"
}

# future use
# variable "inline_policy" {
#   type        = any
#   description = "describe your variable"
# }
