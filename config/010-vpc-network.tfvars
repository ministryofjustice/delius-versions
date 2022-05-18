## 010-vpc-network.tfvars

# This congig relates to the code needed in the VPC section of the pipeline.
# example DAMS/{env name}/VPC

# Infrastructure Terraform
hmpps-delius-network-terraform = {
  # delius-core-dev      = "" # force to default to branch  # delius-core-sandpit  = "" # force to default to branch

  delius-int           = "1.22.0"
  delius-mis-dev       = "1.33.0"
  delius-test          = "1.33.0"
  delius-po-test1      = "1.33.0"
  delius-perf          = "1.33.0"
  delius-stage         = "1.33.0"
  delius-training-test = "1.33.0"
  delius-training      = "1.32.0"
  delius-pre-prod      = "1.33.0"
  delius-prod          = "1.32.0"
}

delius-network-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch  # delius-core-sandpit  = "" # force to default to branch

  delius-int           = "1.713.0"
  delius-mis-dev       = "1.965.0"
  delius-test          = "1.965.0"
  delius-po-test1      = "1.964.0"
  delius-perf          = "1.964.0"
  delius-stage         = "1.965.0"
  delius-training-test = "1.965.0"
  delius-training      = "1.907.0"
  delius-pre-prod      = "1.947.0"
  delius-prod          = "1.907.0"
}

delius-network-smtp-ami = {
  delius-core-dev      = "HMPPS Base CentOS master 1609773202" # January 4, 2021 at 3:22:13 PM UTC
  delius-core-sandpit  = "HMPPS Base CentOS master 1609773202"
  delius-int           = "HMPPS Base CentOS master 1609773202"
  delius-mis-dev       = "HMPPS Base CentOS master 1609773202"
  delius-test          = "HMPPS Base CentOS master 1609773202"
  delius-po-test1      = "HMPPS Base CentOS master 1609773202"
  delius-perf          = "HMPPS Base CentOS master 1609773202"
  delius-stage         = "HMPPS Base CentOS master 1609773202"
  delius-training-test = "HMPPS Base CentOS master 1609773202"
  delius-training      = "HMPPS Base CentOS master 1609773202"
  delius-pre-prod      = "HMPPS Base CentOS master 1609773202"
  delius-prod          = "HMPPS Base CentOS master 1609773202"
}