## delius.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "1.14.0"
  delius-mis-dev       = "1.9.0"
  delius-training-test = "0.1.0"
  delius-training      = "1.14.0"
  delius-test          = "1.14.0"
  delius-po-test1      = "1.14.0"
  delius-perf          = "1.14.0"
  delius-stage         = "1.14.0"
  delius-pre-prod      = "1.12.0"
  delius-prod          = "1.14.0"
}

delius-core-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-int           = "1.84.0"
  delius-mis-dev       = "1.53.0" #2020-06-02:11:40
  delius-training-test = "1.53.0" #2020-06-02:13:09
  delius-training      = "1.84.0" #2020-06-02:14:17
  delius-test          = "1.60.0"
  delius-po-test1      = "1.92.0"
  delius-perf          = "1.55.0" #2020-06-02:18:49
  delius-stage         = "1.90.0"
  delius-pre-prod      = "1.54.0" #2020-06-02:17:52
  delius-prod          = "1.93.0"
}

delius-core-db-ami = {
  delius-core-dev      = "HMPPS OracleDB 11g master 1592301712"
  delius-core-sandpit  = "HMPPS OracleDB 11g master 1592301712"
  delius-int           = "HMPPS OracleDB 11g master 1592301712"
  delius-mis-dev       = "HMPPS OracleDB 11g master 1592301712"
  delius-training-test = "HMPPS Delius-Core OracleDB master 1554007768"
  delius-training      = "HMPPS OracleDB 11g master 1592301712"
  delius-test          = "HMPPS Delius-Core OracleDB master 1554612572"
  delius-po-test1      = "HMPPS OracleDB 11g master 1592301712"
  delius-perf          = "HMPPS OracleDB 11g master 1592301712"
  delius-stage         = "HMPPS Delius-Core OracleDB master 1575175795"
  delius-pre-prod      = "HMPPS Delius-Core OracleDB master 1563079839"
  delius-prod          = "HMPPS Delius-Core OracleDB master 1563079839"
}
