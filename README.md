## Terraform AWS KMS Key Module

This Terraform module provisions an AWS Key Management Service (KMS) key with configurable settings and an associated alias.

### Prerequisites

- Terraform v0.14+ (or your current version)
- AWS account

### Usage

```hcl
module "aws_kms_key" {
  source = "github.com/bartaadalbert/tf-aws-kms-key"

  description = "KMS Key for my application"
  alias_name  = "my-app-kms-key"
  
  // Add any other variables you wish to override here
}
```

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| description | Description of the KMS key. | `string` | `"Kms Key for encryption"` |
| alias_name | Name of the KMS key alias. | `string` | `"dt-kms-key"` |
| customer_master_key_spec | The cryptographic operations for which the KMS key can be used. | `string` | `"SYMMETRIC_DEFAULT"` |
| key_usage | The intended use of the KMS key. | `string` | `"ENCRYPT_DECRYPT"` |
| is_enabled | Specifies whether the KMS key is enabled. | `string` | `"true"` |
| enable_key_rotation | Specifies whether key rotation is enabled. | `string` | `"false"` |
| Environment, Vertical, Project, Resource, ManagedBy | Various metadata tags for the KMS key. | `string` | Various defaults |

### Outputs

| Name | Description |
|------|-------------|
| key_arn | The Amazon Resource Name (ARN) of the KMS key. |
| key_id | The globally unique identifier for the KMS key. |
| key_alias_arn | The ARN of the KMS key alias. |
| key_alias_name | The alias name of the KMS key. |


## Contributions

Contributions are welcome! If you encounter any issues or have ideas for improvements, feel free to open an issue or submit a pull request.
License
This project is licensed under the MIT License.
Feel free to further customize the README to provide more specific information about your project or any additional instructions.