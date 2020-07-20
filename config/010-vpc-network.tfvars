## 010-vpc-network.tfvars

# This congig relates to the code needed in the VPC section of the pipeline.
# example DAMS/{env name}/VPC

# Infrastructure Terraform
hmpps-delius-network-terraform = {
  # delius-core-dev      = """ # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "0.6.0"
  delius-mis-dev       = "0.1.0"
  delius-training-test = "0.7.0"
  delius-training      = "0.6.0"
  delius-test          = "0.6.0"
  delius-po-test1      = "0.6.0"
  delius-perf          = "0.6.0"
  delius-stage         = "0.1.0"
  delius-pre-prod      = "0.1.0"
  delius-prod          = "0.1.0"
}

delius-network-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "1.96.0"
  delius-mis-dev       = "1.53.0" #2020-06-02:11:40
  delius-training-test = "1.126.0"
  delius-training      = "1.108.0"
  delius-test          = "1.69.0"
  delius-po-test1      = "1.91.0"
  delius-perf          = "1.69.0"
  delius-stage         = "1.54.0" #2020-06-02:17:51
  delius-pre-prod      = "1.54.0" #2020-06-02:17:52
  delius-prod          = "1.24.0" #2020-05-15:19:34
}
