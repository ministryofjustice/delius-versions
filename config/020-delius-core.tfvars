## delius.tfvars

# This congig relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

Infrastructure Terraform
hmpps-delius-core-terraform = {
  delius-core-dev      = ""
  delius-core-sandpit  = ""
  delius-int           = "1.6.0" #2020-05-15:12:24
  delius-mis-dev       = "1.9.0" #2020-01-23:16:04
  delius-perf          = "1.8.0" #2020-05-28:14:15
  delius-po-test1      = "0.1.0" #2019-12-04
  delius-pre-prod      = "1.6.0" #2020-05-19:14:20
  delius-prod          = "1.6.0" #2020-05-15:19:34
  delius-stage         = "1.6.0" #2020-05-26:10:28
  delius-test          = "1.7.0" #2020-05-27:09:29
  delius-training      = "1.6.0" #2020-05-18:12:37
  delius-training-test = "0.1.0" #2020-04-08:10:03
}
