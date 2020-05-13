resource "aws_ssm_parameter" "this" {
  for_each = var.env_version

  description = "${each.value} for ${var.item_name} in environment - ${each.key}"
  name        = "/versions/${var.subcomponent}/${var.item_type}/${var.item_name}/${each.key}"
  value       = each.value
  type        = "String"
  #tags        = var.tags
  tags        = merge(var.tags, map(
                  "environment_name", "${each.key}",
                  "subcomponent", "${var.subcomponent}",
                  "item_type", "${var.item_type}",
                  "item_name", "${var.item_name}",
                  "version", "${each.value}"
                ))
}

output "this" {
  value = {
    for param in aws_ssm_parameter.this :
    param.name => param.value
  }
}
