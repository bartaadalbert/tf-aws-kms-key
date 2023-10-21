resource "aws_kms_key" "dt_kms_key" {
    description              = var.description
    customer_master_key_spec = var.customer_master_key_spec
    key_usage                = var.key_usage
    is_enabled               = var.is_enabled
    enable_key_rotation      = var.enable_key_rotation
    tags = {
        Name               = "${var.Project}-${var.Environment}-kms-key"
        Environment        = var.Environment
        Project            = var.Project
        Vertical           = var.Vertical
        Resource           = var.Resource
        ManagedBy          = var.ManagedBy
    }
}


resource "aws_kms_alias" "dt_kms_key_alias"  {
    name          = "alias/${var.alias_name}"
    target_key_id = aws_kms_key.dt_kms_key.key_id
}