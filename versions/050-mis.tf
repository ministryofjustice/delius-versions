module "hmpps-mis-terraform-repo" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "mis"
  item_type    = "repo"
  item_name    = "hmpps-mis-terraform-repo"
  versions     = var.hmpps-mis-terraform-repo
  tags         = var.tags
}

output "hmpps-mis-terraform-repo" {
  value = "${module.hmpps-mis-terraform-repo.this}"
}

module "mis-hmpps-env-configs" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "mis"
  item_type    = "repo"
  item_name    = "hmpps-env-configs"
  versions     = var.mis-hmpps-env-configs
  tags         = var.tags
}

output "mis-hmpps-env-configs" {
  value = "${module.mis-hmpps-env-configs.this}"
}

module "mis-db-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "mis"
  item_type    = "ami"
  item_name    = "mis-db-ami"
  versions     = var.mis-db-ami
  tags         = var.tags
}

output "mis-db-ami" {
  value = "${module.mis-db-ami.this}"
}

module "misboe-db-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "mis"
  item_type    = "ami"
  item_name    = "misboe-db-ami"
  versions     = var.misboe-db-ami
  tags         = var.tags
}

output "misboe-db-ami" {
  value = "${module.misboe-db-ami.this}"
}

module "misdsd-db-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "mis"
  item_type    = "ami"
  item_name    = "misdsd-db-ami"
  versions     = var.misdsd-db-ami
  tags         = var.tags
}

output "misdsd-db-ami" {
  value = "${module.misdsd-db-ami.this}"
}
