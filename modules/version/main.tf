locals {
  match_aws_tag_non_permitted_chars = "/[^\\w\\s\\+\\-=\\.\\:\\/@]/"
  replacement                       = "_"
}

resource "aws_ssm_parameter" "this" {
  for_each = var.env_version

  description = "${each.value} for ${var.item_name} in environment - ${each.key}"
  name        = "/versions/${var.subcomponent}/${var.item_type}/${var.item_name}/${each.key}"
  value       = each.value
  type        = "String"
  overwrite   = true
  tags        = merge(var.tags, map(
                  "environment_name", "${each.key}",
                  "subcomponent", "${var.subcomponent}",
                  "item_type", "${var.item_type}",
                  "item_name", "${var.item_name}",
                  "version", "${replace(each.value, local.match_aws_tag_non_permitted_chars, local.replacement)}"
                ))
}

output "this" {
  value = {
    for param in aws_ssm_parameter.this :
    param.name => param.value
  }
}
