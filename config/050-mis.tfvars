## 050-mis.tfvars

## mis.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-mis-terraform-repo = {
  delius-mis-dev       = "0.26.0"
  delius-auto-test     = "0.26.0"
  delius-stage         = "0.24.0"
  delius-pre-prod      = "0.24.0"
  delius-prod          = "0.24.0"
}

mis-hmpps-env-configs = {
  delius-mis-dev       = "1.271.0"
  delius-auto-test     = "1.271.0"
  delius-stage         = "1.206.0"
  delius-pre-prod      = "1.206.0"
  delius-prod          = "1.185.0"
}

# The HMPPS OracleDB 11g master 1592301712 ami is used for bootstrapping
# Oracle 11g Database and Oracle 19c Grid combination

mis-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 11g master 1592301712"
  delius-auto-test    = "HMPPS OracleDB 11g master 1592301712"
  delius-stage        = "HMPPS OracleDB 11g master 1592301712"
  delius-pre-prod     = "HMPPS OracleDB 11g master 1592301712"
  delius-prod         = "HMPPS Delius-Core OracleDB master 1563079839"
}

misboe-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 11g master 1592301712"
  delius-auto-test    = "HMPPS OracleDB 11g master 1592301712"
  delius-stage        = "HMPPS OracleDB 11g master 1592301712"
  delius-pre-prod     = "HMPPS OracleDB 11g master 1592301712"
  delius-prod         = "HMPPS Delius-Core OracleDB master 1563079839"
}

misdsd-db-ami = {
  delius-mis-dev      = "HMPPS OracleDB 11g master 1592301712"
  delius-auto-test    = "HMPPS OracleDB 11g master 1592301712"
  delius-stage        = "HMPPS OracleDB 11g master 1592301712"
  delius-pre-prod     = "HMPPS OracleDB 11g master 1592301712"
  delius-prod         = "HMPPS Delius-Core OracleDB master 1563079839"
}
