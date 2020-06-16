module "hmpps-mis-terraform-repo" {
  source = "../modules/version"

  subcomponent = "mis"
  item_type   = "repo"
  item_name   = "hmpps-mis-terraform-repo"
  env_version = var.hmpps-mis-terraform-repo
  tags        = var.tags
}

output "hmpps-mis-terraform-repo" {
  value = "${module.hmpps-mis-terraform-repo.this}"
}

module "mis-hmpps-env-configs" {
  source = "../modules/version"

  subcomponent = "mis"
  item_type   = "repo"
  item_name   = "hmpps-env-configs"
  env_version = var.mis-hmpps-env-configs
  tags        = var.tags
}

output "mis-hmpps-env-configs" {
  value = "${module.mis-hmpps-env-configs.this}"
}
