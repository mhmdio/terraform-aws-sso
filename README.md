# terraform-aws-sso

## Assumptions

- AWS ORG created, with SSO enabled.
- AWS SSO enabled.
- AWS SSO Group is created.

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | >= 0.14.0 |
| aws       | >= 3.24.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | >= 3.24.0 |

## Inputs

| Name                  | Description                                                                                                                | Type           | Default                                   | Required |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------- | :------: |
| account\_ids          | (Required, Forces new resource) An AWS account identifier, typically a 10-12 digit string.                                 | `list(string)` | n/a                                       |   yes    |
| description           | (Optional) The description of the Permission Set.                                                                          | `string`       | `""`                                      |    no    |
| group\_display\_name  | The group's display name value                                                                                             | `string`       | n/a                                       |   yes    |
| managed\_policy\_arns | Managed polices ARNs                                                                                                       | `list(string)` | n/a                                       |   yes    |
| name                  | (Required, Forces new resource) The name of the Permission Set.                                                            | `string`       | n/a                                       |   yes    |
| relay\_state          | (Optional) The relay state URL used to redirect users within the application during the federation authentication process. | `string`       | `null`                                    |    no    |
| session\_duration     | (Optional) The length of time that the application user sessions are valid in the ISO-8601 standard. Default: PT1H.        | `string`       | `"PT1H"`                                  |    no    |
| tags                  | (Optional) Key-value map of resource tags.                                                                                 | `map(string)`  | <pre>{<br>  "Terraform": "Yes"<br>}</pre> |    no    |

## Outputs

| Name                    | Description |
| ----------------------- | ----------- |
| account\_ids            | n/a         |
| account\_names          | n/a         |
| identity\_store\_id     | n/a         |
| ssoadmin\_instance\_arn | n/a         |