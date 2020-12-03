
remote_state {
  backend = "s3"

  config = {
    encrypt        = true
    bucket         = "${get_env("TG_VERSIONS_REMOTE_STATE_BUCKET", get_env("TG_REMOTE_STATE_BUCKET", "REMOTE_STATE_BUCKET"))}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "${get_env("TG_REGION", "AWS-REGION")}"
    dynamodb_table = "${get_env("TG_VERSIONS_LOCK_TABLE", "${get_env("TG_ENVIRONMENT_IDENTIFIER", "PROJECT")}-lock-table")}"
  }

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

terraform {
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()
    optional_var_files = [
      "${get_parent_terragrunt_dir()}/config/010-vpc-network.tfvars",
      "${get_parent_terragrunt_dir()}/config/020-delius-core.tfvars",
      "${get_parent_terragrunt_dir()}/config/050-mis.tfvars",
      "${get_parent_terragrunt_dir()}/config/110-engineering.tfvars",
    ]
  }

  extra_arguments "disable_input" {
    commands  = get_terraform_commands_that_need_input()
    arguments = ["-input=false"]
  }
}

# Generate an AWS provider block
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region  = "${get_env("TG_REGION", "")}"
  version = "~> 2.0"
}
EOF
}
