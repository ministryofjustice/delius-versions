locals {
  match_aws_tag_non_permitted_chars = "/[^\\w\\s\\+\\-=\\.\\:\\/@]/"
  replacement                       = "_"

  # In target accounts we only add only the relevant versions for that environment.
  # However in the Engineering accounts we add _all_ versions:
  engineering_account_ids = ["895523100917", "077643444046"]
  create_all_env_versions = contains(local.engineering_account_ids, data.aws_caller_identity.current.account_id)
  current_env_version     = contains(keys(var.versions), var.environment_name) ? map(var.environment_name, var.versions[var.environment_name]) : {}
}

resource "aws_ssm_parameter" "this" {
  for_each = local.create_all_env_versions ? var.versions : local.current_env_version

  description = "${each.value} for ${var.item_name} in environment - ${each.key}"
  name        = "/versions/${var.subcomponent}/${var.item_type}/${var.item_name}/${each.key}"
  value       = each.value
  type        = "String"
  overwrite   = true
  tags = merge(var.tags, map(
    "environment_name", "${each.key}",
    "subcomponent", "${var.subcomponent}",
    "item_type", "${var.item_type}",
    "item_name", "${replace(var.item_name, local.match_aws_tag_non_permitted_chars, local.replacement)}",
    "version", "${replace(each.value, local.match_aws_tag_non_permitted_chars, local.replacement)}"
  ))
}

output "this" {
  value = {
    for param in aws_ssm_parameter.this :
    param.name => param.value
  }
}
