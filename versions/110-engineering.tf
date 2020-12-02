module "hmpps-engineering-platform-terraform_ecr" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "repo"
  item_name    = "hmpps-engineering-platform-terraform/ecr"
  versions     = var.hmpps-engineering-platform-terraform_ecr
  tags         = var.tags
}

output "hmpps-engineering-platform-terraform_ecr" {
  value = "${module.hmpps-engineering-platform-terraform_ecr.this}"
}

module "hmpps-engineering-platform-terraform_jira" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "repo"
  item_name    = "hmpps-engineering-platform-terraform/jira"
  versions     = var.hmpps-engineering-platform-terraform_jira
  tags         = var.tags
}

output "hmpps-engineering-platform-terraform_jira" {
  value = "${module.hmpps-engineering-platform-terraform_jira.this}"
}

module "hmpps-engineering-platform-terraform_network" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "repo"
  item_name    = "hmpps-engineering-platform-terraform/network"
  versions     = var.hmpps-engineering-platform-terraform_network
  tags         = var.tags
}

output "hmpps-engineering-platform-terraform_network" {
  value = "${module.hmpps-engineering-platform-terraform_network.this}"
}

module "hmpps-engineering-platform-terraform_oracledb" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "repo"
  item_name    = "hmpps-engineering-platform-terraform/oracledb"
  versions     = var.hmpps-engineering-platform-terraform_oracledb
  tags         = var.tags
}

output "hmpps-engineering-platform-terraform_oracledb" {
  value = "${module.hmpps-engineering-platform-terraform_oracledb.this}"
}

module "hmpps-engineering-platform-terraform_services" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "repo"
  item_name    = "hmpps-engineering-platform-terraform/services"
  versions     = var.hmpps-engineering-platform-terraform_services
  tags         = var.tags
}

output "hmpps-engineering-platform-terraform_services" {
  value = "${module.hmpps-engineering-platform-terraform_services.this}"
}

module "hmpps-engineering-platform-terraform_vpcpeering" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "repo"
  item_name    = "hmpps-engineering-platform-terraform/vpcpeering"
  versions     = var.hmpps-engineering-platform-terraform_vpcpeering
  tags         = var.tags
}

output "hmpps-engineering-platform-terraform_vpcpeering" {
  value = "${module.hmpps-engineering-platform-terraform_vpcpeering.this}"
}

// AMI
module "bastion-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "ami"
  item_name    = "bastion-ami"
  versions     = var.bastion-ami
  tags         = var.tags
}

output "bastion-ami" {
  value = "${module.bastion-ami.this}"
}

module "oem-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "ami"
  item_name    = "oem-ami"
  versions     = var.oem-ami
  tags         = var.tags
}

output "oem-ami" {
  value = "${module.oem-ami.this}"
}

module "rman-catalog-ami" {
  source           = "../modules/version"
  environment_name = var.environment_name

  subcomponent = "engineering"
  item_type    = "ami"
  item_name    = "rman-catalog-ami"
  versions     = var.rman-catalog-ami
  tags         = var.tags
}

output "rman-catalog-ami" {
  value = "${module.rman-catalog-ami.this}"
}
