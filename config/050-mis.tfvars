## 050-mis.tfvars

## mis.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-mis-terraform-repo = {
  delius-mis-dev       = "0.54.0"
  delius-auto-test     = "0.53.0"
  delius-stage         = "0.54.0"
  delius-pre-prod      = "0.53.0"
  delius-prod          = "0.53.0"
}

mis-hmpps-env-configs = {
  delius-mis-dev       = "1.539.0"
  delius-auto-test     = "1.358.0"   #No longer in use
  delius-stage         = "1.412.0"   #No longer in use
  delius-pre-prod      = "1.358.0"   #No longer in use
  delius-prod          = "1.358.0"   #No longer in use
}

# The HMPPS OracleDB 11g master 1592301712 ami is used for bootstrapping
# Oracle 11g Database and Oracle 19c Grid combination

# The HMPPS OracleDB 18c master 1599225437 ami is used for bootstrapping
# Oracle 18c Database and Oracle 19c Grid combination

mis-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 18c master 1599225437"
  delius-auto-test    = "HMPPS OracleDB 18c master 1599225437"
  delius-stage        = "HMPPS OracleDB 18c master 1599225437"
  delius-pre-prod     = "HMPPS OracleDB 18c master 1599225437"
  delius-prod         = "HMPPS OracleDB 18c master 1599225437"
}

misboe-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 18c master 1599225437"
  delius-auto-test    = "HMPPS OracleDB 18c master 1599225437"
  delius-stage        = "HMPPS OracleDB 18c master 1599225437"
  delius-pre-prod     = "HMPPS OracleDB 18c master 1599225437"
  delius-prod         = "HMPPS OracleDB 18c master 1599225437"
}

misdsd-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 18c master 1599225437"
  delius-auto-test    = "HMPPS OracleDB 18c master 1599225437"
  delius-stage        = "HMPPS OracleDB 18c master 1599225437"
  delius-pre-prod     = "HMPPS OracleDB 18c master 1599225437"
  delius-prod         = "HMPPS OracleDB 18c master 1599225437"
}
