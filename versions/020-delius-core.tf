module "hmpps-delius-core-terraform" {
  source = "../modules/version"

  subcomponent = "delius-core"
  item_type   = "repo"
  item_name   = "hmpps-delius-core-terraform"
  env_version = var.hmpps-delius-core-terraform
  tags        = var.tags
}

output "hmpps-delius-core-terraform" {
  value = "${module.hmpps-delius-core-terraform.this}"
}

module "delius-core-hmpps-env-configs" {
  source = "../modules/version"

  subcomponent = "delius-core"
  item_type   = "repo"
  item_name   = "hmpps-env-configs"
  env_version = var.delius-core-hmpps-env-configs
  tags        = var.tags
}

output "delius-core-hmpps-env-configs" {
  value = "${module.hmpps-delius-core-terraform.this}"
}
