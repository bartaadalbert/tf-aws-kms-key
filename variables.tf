variable "AWS_ACCESS_KEY" {
  type        = string
#   default     = "AKIXXXXXXXXXXXXXXXXXXXXX"
  default     = ""
  description = "AWS access key"
}
variable "AWS_SECRET_KEY" {
  type        = string
#   default     = "xXX/Yyyy+xxxxxxxxxxxxxxxxxxxxxxxxxx"
  default     = ""
  description = "AWS secret kry"
}
variable "AWS_REGION" {
    type        = string
    default     = "eu-central-1"
}
variable "AWS_PROFILE" {
    type        = string
    default     = "default"
}
variable "description" {
    type        = string
    default    = "Kms Key for encryption"
}
variable "alias_name" {
    type        = string
    default     = "dt-kms-key"
}
variable "customer_master_key_spec" {
    type        = string
    default     = "SYMMETRIC_DEFAULT"
}
variable "key_usage" {
    type        = string
    default     = "ENCRYPT_DECRYPT"
}
variable "is_enabled" {
    type        = string
    default     = "true"
}
variable "enable_key_rotation" {
    type        = string
    default     = "false"
}
variable "Environment" {
    type        = string
    default     = "dev"
}
variable "Vertical" {
    type        = string
    default     = "operation"
}
variable "Project" {
    type        = string
    default     = "dt"
}
variable "Resource" {
    type        = string
    default     = "kms"
}
variable "ManagedBy" {
    type        = string
    default     = "terraform"
}
