module "hmpps-delius-core-terraform" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "delius-core"
  item_type    = "repo"
  item_name    = "hmpps-delius-core-terraform"
  versions     = var.hmpps-delius-core-terraform
  tags         = var.tags
}

output "hmpps-delius-core-terraform" {
  value = "${module.hmpps-delius-core-terraform.this}"
}

module "delius-core-hmpps-env-configs" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "delius-core"
  item_type    = "repo"
  item_name    = "hmpps-env-configs"
  versions     = var.delius-core-hmpps-env-configs
  tags         = var.tags
}

output "delius-core-hmpps-env-configs" {
  value = "${module.delius-core-hmpps-env-configs.this}"
}

module "delius-core-db-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "delius-core"
  item_type    = "ami"
  item_name    = "db-ami"
  versions     = var.delius-core-db-ami
  tags         = var.tags
}

output "delius-core-db-ami" {
  value = "${module.delius-core-db-ami.this}"
}
