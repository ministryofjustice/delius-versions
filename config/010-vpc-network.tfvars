## 010-vpc-network.tfvars

# This congig relates to the code needed in the VPC section of the pipeline.
# example DAMS/{env name}/VPC

# Infrastructure Terraform
hmpps-delius-network-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test = "1.22.0"

  delius-int           = "1.22.0"
  delius-mis-dev       = "1.24.0"
  delius-test          = "1.22.0"
  delius-po-test1      = "1.22.0"
  delius-perf          = "1.22.0"
  delius-stage         = "1.22.0"
  delius-training-test = "1.24.0"
  delius-training      = "1.22.0"
  delius-pre-prod      = "1.20.0"
  delius-prod          = "1.18.0"
}

delius-network-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test = "1.719.0"

  delius-int           = "1.713.0"
  delius-mis-dev       = "1.721.0"
  delius-test          = "1.690.0"
  delius-po-test1      = "1.718.0"
  delius-perf          = "1.718.0"
  delius-stage         = "1.720.0"
  delius-training-test = "1.720.0"
  delius-training      = "1.690.0"
  delius-pre-prod      = "1.656.0"
  delius-prod          = "1.548.0"
}

delius-network-smtp-ami = {
  delius-core-dev      = "HMPPS Base CentOS master 1609773202" # January 4, 2021 at 3:22:13 PM UTC
  delius-core-sandpit  = "HMPPS Base CentOS master 1609773202"
  delius-auto-test     = "HMPPS Base CentOS master 1609773202"
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