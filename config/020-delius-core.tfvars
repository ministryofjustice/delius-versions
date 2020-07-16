## delius.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "2.0.0"
  delius-mis-dev       = "2.0.0"
  delius-test          = "1.20.0"
  delius-po-test1      = "1.20.0"
  delius-perf          = "1.20.0"
  delius-stage         = "1.20.0"
  delius-training-test = "1.20.0"
  delius-training      = "1.14.0"
  delius-pre-prod      = "1.12.0"
  delius-prod          = "1.14.0"
}

delius-core-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "1.104.0"
  delius-mis-dev       = "1.104.0"
  delius-test          = "1.104.0"
  delius-po-test1      = "1.104.0"
  delius-perf          = "1.104.0"
  delius-stage         = "1.104.0"
  delius-training-test = "1.112.0"
  delius-training      = "1.84.0"
  delius-pre-prod      = "1.54.0" #2020-06-02:17:52
  delius-prod          = "1.94.0"
}

delius-core-db-ami = {
  delius-core-dev      = "HMPPS OracleDB 11g master 1592301712"
  delius-core-sandpit  = "HMPPS OracleDB 11g master 1592301712"
  delius-int           = "HMPPS OracleDB 11g master 1592301712"
  delius-mis-dev       = "HMPPS OracleDB 11g master 1592301712"
  delius-test          = "HMPPS Delius-Core OracleDB master 1554612572"
  delius-po-test1      = "HMPPS OracleDB 11g master 1592301712"
  delius-perf          = "HMPPS OracleDB 11g master 1592301712"
  delius-stage         = "HMPPS Delius-Core OracleDB master 1575175795"
  delius-training-test = "HMPPS Delius-Core OracleDB master 1554007768"
  delius-training      = "HMPPS OracleDB 11g master 1592301712"
  delius-pre-prod      = "HMPPS Delius-Core OracleDB master 1563079839"
  delius-prod          = "HMPPS Delius-Core OracleDB master 1563079839"
}
