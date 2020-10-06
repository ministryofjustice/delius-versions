
remote_state {
  backend = "s3"

  config = {
    encrypt        = true
    bucket         = "${get_env("TG_REMOTE_STATE_BUCKET", "REMOTE_STATE_BUCKET")}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "${get_env("TG_REGION", "AWS-REGION")}"
    dynamodb_table = "${get_env("TG_PROJECT", "PROJECT")}-lock-table"
  }

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

terraform {
  extra_arguments "common_vars" {
    commands = [
      "destroy",
      "plan",
      "import",
      "push",
      "refresh",
    ]

      arguments = [
        "-var-file=${get_parent_terragrunt_dir()}/config/010-vpc-network.tfvars",
        "-var-file=${get_parent_terragrunt_dir()}/config/020-delius-core.tfvars",
        "-var-file=${get_parent_terragrunt_dir()}/config/050-mis.tfvars",
        "-var-file=${get_parent_terragrunt_dir()}/config/110-engineering.tfvars",
      ]
  }
}

# Generate an AWS provider block
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region  = "${get_env("TG_REGION", "AWS-REGION")}"
  version = "~> 2.61"

  # Only these AWS Account IDs may be operated on by this template
  allowed_account_ids = ["${get_env("TG_ACCOUNT_ID", "ACCOUNT_ID")}"]
}
EOF
}
