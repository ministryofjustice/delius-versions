## delius.tfvars

# This congig relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "1.6.0" #2020-05-15:12:24
  delius-mis-dev       = "1.9.0" #2020-01-23:16:04
  delius-po-test1      = "0.1.0" #2019-12-04
  delius-training-test = "0.1.0" #2020-04-08:10:03
  delius-test          = "1.12.0"
  delius-perf          = "1.12.0"
  delius-stage         = "1.12.0"
  delius-pre-prod      = "1.12.0"
  delius-training      = "1.6.0" #2020-05-18:12:37
  delius-prod          = "1.6.0" #2020-05-15:19:34
}
