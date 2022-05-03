## 050-mis.tfvars

## mis.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-mis-terraform-repo = {
  delius-mis-dev       = "latest"  #No longer in use, uses latest code
  delius-auto-test     = "0.88.3"  #Running config version 1.748.0
  delius-stage         = "0.88.3"
  delius-pre-prod      = "0.88.3"
  delius-prod          = "0.88.3"
}

mis-hmpps-env-configs = {
  delius-mis-dev       = "1.937.0"
  delius-auto-test     = "1.937.0"   #No longer in use
  delius-stage         = "1.937.0"   #No longer in use
  delius-pre-prod      = "1.937.0"   #No longer in use
  delius-prod          = "1.358.0"   #No longer in use
}

# The HMPPS OracleDB 19c master 1618992806 ami is used for bootstrapping
# Oracle 19c Database and Oracle 19c Grid combination

mis-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 19c master 1618992806"
  delius-auto-test    = "HMPPS OracleDB 19c master 1618992806"
  delius-stage        = "HMPPS OracleDB 19c master 1618992806"
  delius-pre-prod     = "HMPPS OracleDB 19c master 1618992806"
  delius-prod         = "HMPPS OracleDB 19c master 1618992806"
}

misboe-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 19c master 1618992806"
  delius-auto-test    = "HMPPS OracleDB 19c master 1618992806"
  delius-stage        = "HMPPS OracleDB 19c master 1618992806"
  delius-pre-prod     = "HMPPS OracleDB 19c master 1618992806"
  delius-prod         = "HMPPS OracleDB 19c master 1618992806"
}

misdsd-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 19c master 1618992806"
  delius-auto-test    = "HMPPS OracleDB 19c master 1618992806"
  delius-stage        = "HMPPS OracleDB 19c master 1618992806"
  delius-pre-prod     = "HMPPS OracleDB 19c master 1618992806"
  delius-prod         = "HMPPS OracleDB 19c master 1618992806"
}
