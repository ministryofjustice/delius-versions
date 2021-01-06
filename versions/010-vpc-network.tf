module "hmpps-delius-network-terraform" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "vpc-network"
  item_type    = "repo"
  item_name    = "hmpps-delius-network-terraform"
  versions     = var.hmpps-delius-network-terraform
  tags         = var.tags
}

output "hmpps-delius-network-terraform" {
  value = "${module.hmpps-delius-network-terraform.this}"
}

module "delius-network-hmpps-env-configs" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "vpc-network"
  item_type    = "repo"
  item_name    = "hmpps-env-configs"
  versions     = var.delius-network-hmpps-env-configs
  tags         = var.tags
}

output "delius-network-hmpps-env-configs" {
  value = "${module.delius-network-hmpps-env-configs.this}"
}

module "delius-network-smtp-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "delius-network"
  item_type    = "ami"
  item_name    = "smtp"
  versions     = var.delius-network-smtp-ami
  tags         = var.tags
}

output "delius-network-smtp-ami" {
  value = module.delius-network-smtp-ami.this
}
