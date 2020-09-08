## delius.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "2.14.0"
  delius-int           = "2.14.0"
  delius-mis-dev       = "2.14.0"
  delius-test          = "2.14.1"
  delius-po-test1      = "2.14.0"
  delius-perf          = "2.14.1"
  delius-stage         = "2.14.0"
  delius-training-test = "2.14.0"
  delius-training      = "2.14.0"
  delius-pre-prod      = "2.14.0"
  delius-prod          = "vALS-1365_1.15.0"
}

delius-core-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test     = "1.208.0"
  delius-int           = "1.208.0"
  delius-mis-dev       = "1.208.0"
  delius-test          = "1.208.0"
  delius-po-test1      = "1.208.0"
  delius-perf          = "1.208.0"
  delius-stage         = "1.208.0"
  delius-training-test = "1.208.0"
  delius-training      = "1.208.0"
  delius-pre-prod      = "1.208.0"
  delius-prod          = "vALS-1365_1.94.0"
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
