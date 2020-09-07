## 010-vpc-network.tfvars

# This congig relates to the code needed in the VPC section of the pipeline.
# example DAMS/{env name}/VPC

# Infrastructure Terraform
hmpps-delius-network-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "1.4.0"
  delius-int           = "1.4.0"
  delius-mis-dev       = "1.4.0"
  delius-test          = "1.4.0"
  delius-po-test1      = "1.2.0"
  delius-perf          = "1.4.0"
  delius-stage         = "1.4.0"
  delius-training-test = "1.2.0"
  delius-training      = "1.2.0"
  delius-pre-prod      = "1.2.0"
  delius-prod          = "1.2.0"
}

delius-network-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "1.170.0"
  delius-int           = "1.170.0"
  delius-mis-dev       = "1.170.0"
  delius-test          = "1.170.0"
  delius-po-test1      = "1.170.0"
  delius-perf          = "1.170.0"
  delius-stage         = "1.170.0"
  delius-training-test = "1.170.0"
  delius-training      = "1.170.0"
  delius-pre-prod      = "1.170.0"
  delius-prod          = "1.170.0"
}
