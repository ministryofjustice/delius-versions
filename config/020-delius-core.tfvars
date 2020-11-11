## delius.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "3.9.0"
  delius-int           = "3.9.0"
  delius-mis-dev       = "3.9.0"
  delius-test          = "3.9.0"
  delius-po-test1      = "3.9.0"
  delius-perf          = "3.9.0"
  delius-stage         = "3.9.0"
  delius-training-test = "3.9.0"
  delius-training      = "3.9.0"
  delius-pre-prod      = "3.9.0"
  delius-prod          = "3.9.0"
}

delius-core-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "1.292.0"
  delius-int           = "1.292.0"
  delius-mis-dev       = "1.292.0"
  delius-test          = "1.332.0"
  delius-po-test1      = "1.292.0"
  delius-perf          = "1.292.0"
  delius-stage         = "1.293.0"
  delius-training-test = "1.292.0"
  delius-training      = "1.292.0"
  delius-pre-prod      = "1.292.0"
  delius-prod          = "1.293.0"
}

# The HMPPS OracleDB 11g master 1592301712 ami is used for bootstrapping
# Oracle 11g Database and Oracle 19c Grid combination

delius-core-db-ami = {
  delius-core-dev      = "HMPPS OracleDB 18c master 1599225437"
  delius-core-sandpit  = "HMPPS OracleDB 18c master 1599225437"
  delius-auto-test     = "HMPPS OracleDB 18c master 1599225437"
  delius-int           = "HMPPS OracleDB 18c master 1599225437"
  delius-mis-dev       = "HMPPS OracleDB 18c master 1599225437"
  delius-test          = "HMPPS OracleDB 18c master 1599225437"
  delius-po-test1      = "HMPPS OracleDB 18c master 1599225437"
  delius-perf          = "HMPPS OracleDB 11g master 1592301712"
  delius-stage         = "HMPPS OracleDB 11g master 1592301712"
  delius-training-test = "HMPPS OracleDB 18c master 1599225437"
  delius-training      = "HMPPS OracleDB 18c master 1599225437"
  delius-pre-prod      = "HMPPS OracleDB 11g master 1592301712"
  delius-prod          = "HMPPS OracleDB 11g master 1592301712"
}
