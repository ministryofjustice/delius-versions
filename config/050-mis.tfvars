## 050-mis.tfvars

## mis.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-mis-terraform-repo = {
  delius-mis-dev       = "0.4.0"
  delius-stage         = "0.4.0"
  delius-pre-prod      = "0.4.0"
  delius-prod          = "0.4.0"
}

mis-hmpps-env-configs = {
  delius-mis-dev       = "1.74.0"
  delius-stage         = "1.74.0"
  delius-pre-prod      = "1.74.0"
  delius-prod          = "1.74.0"
}
