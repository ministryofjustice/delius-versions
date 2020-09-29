## delius.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "3.3.0"
  delius-int           = "3.3.0"
  delius-mis-dev       = "3.3.0"
  delius-test          = "3.3.0"
  delius-po-test1      = "3.3.0"
  delius-perf          = "3.3.0"
  delius-stage         = "3.3.0"
  delius-training-test = "3.3.0"
  delius-training      = "3.3.0"
  delius-pre-prod      = "3.3.0"
  delius-prod          = "3.3.0"
}

delius-core-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "1.244.0"
  delius-int           = "1.218.0"
  delius-mis-dev       = "1.218.0"
  delius-test          = "1.218.0"
  delius-po-test1      = "1.218.0"
  delius-perf          = "1.221.0"
  delius-stage         = "1.238.0"
  delius-training-test = "1.218.0"
  delius-training      = "1.218.0"
  delius-pre-prod      = "1.218.0"
  delius-prod          = "1.218.0"
}

# The HMPPS OracleDB 11g master 1592301712 ami is used for bootstrapping
# Oracle 11g Database and Oracle 19c Grid combination

delius-core-db-ami = {
  delius-core-dev      = "HMPPS OracleDB 11g master 1592301712"
  delius-core-sandpit  = "HMPPS OracleDB 11g master 1592301712"
  delius-auto-test     = "HMPPS OracleDB 11g master 1592301712"
  delius-int           = "HMPPS OracleDB 11g master 1592301712"
  delius-mis-dev       = "HMPPS OracleDB 11g master 1592301712"
  delius-test          = "HMPPS OracleDB 11g master 1592301712"
  delius-po-test1      = "HMPPS OracleDB 11g master 1592301712"
  delius-perf          = "HMPPS OracleDB 11g master 1592301712"
  delius-stage         = "HMPPS OracleDB 11g master 1592301712"
  delius-training-test = "HMPPS OracleDB 11g master 1592301712"
  delius-training      = "HMPPS OracleDB 11g master 1592301712"
  delius-pre-prod      = "HMPPS OracleDB 11g master 1592301712"
  delius-prod          = "HMPPS Delius-Core OracleDB master 1563079839"
}
