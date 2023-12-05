## 010-vpc-network.tfvars

# This congig relates to the code needed in the VPC section of the pipeline.
# example DAMS/{env name}/VPC

# Infrastructure Terraform
hmpps-delius-network-terraform = {
  # delius-core-dev      = "" # force to default to branch 

  delius-mis-dev  = "1.56.0"
  delius-test     = "1.56.0"
  delius-stage    = "1.56.0"
  delius-training = "1.49.0"
  delius-pre-prod = "1.50.0"
  delius-prod     = "1.47.0"
}

delius-network-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch

  delius-mis-dev  = "1.1556.0"
  delius-test     = "1.1555.0"
  delius-stage    = "1.1556.0"
  delius-training = "1.1479.0"
  delius-pre-prod = "1.1483.0"
  delius-prod     = "1.1424.0"
}

delius-network-smtp-ami = {
  delius-core-dev = "HMPPS Base CentOS master 1609773202" # January 4, 2021 at 3:22:13 PM UTC
  delius-mis-dev  = "HMPPS Base CentOS master 1609773202"
  delius-test     = "HMPPS Base CentOS master 1609773202"
  delius-stage    = "HMPPS Base CentOS master 1609773202"
  delius-training = "HMPPS Base CentOS master 1609773202"
  delius-pre-prod = "HMPPS Base CentOS master 1609773202"
  delius-prod     = "HMPPS Base CentOS master 1609773202"
}