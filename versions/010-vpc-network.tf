module "hmpps-delius-network-terraform" {
  source = "../modules/version"

  subcomponent = "vpc-network"
  item_type   = "repo"
  item_name   = "hmpps-delius-network-terraform"
  env_version = var.hmpps-delius-network-terraform
  tags        = var.tags
}

output "hmpps-delius-network-terraform" {
  value = "${module.hmpps-delius-network-terraform.this}"
}
