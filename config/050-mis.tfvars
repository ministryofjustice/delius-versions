## 050-mis.tfvars

## mis.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-mis-terraform-repo = {
  delius-mis-dev       = "0.15.0"
  delius-auto-test     = "0.13.0"
  delius-stage         = "0.13.0"
  delius-pre-prod      = "vALS-1364_0.8.0"
  delius-prod          = "vALS-1364_0.8.0"
}

mis-hmpps-env-configs = {
  delius-mis-dev       = "1.152.0"
  delius-auto-test     = "1.152.0"
  delius-stage         = "1.152.0"
  delius-pre-prod      = "1.152.0"
  delius-prod          = "1.152.0"
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
