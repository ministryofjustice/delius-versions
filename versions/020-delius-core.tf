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
