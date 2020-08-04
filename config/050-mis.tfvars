## 050-mis.tfvars

## mis.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-mis-terraform-repo = {
  delius-mis-dev       = "0.12.0"
  delius-auto-test     = "0.12.0"
  delius-stage         = "0.12.0"
  delius-pre-prod      = "vALS-1363_0.8.0"
  delius-prod          = "vALS-1363_0.8.0"
}

mis-hmpps-env-configs = {
  delius-mis-dev       = "1.142.0"
  delius-auto-test     = "1.142.0"
  delius-stage         = "1.142.0"
  delius-pre-prod      = "1.133.0"
  delius-prod          = "1.133.0"
}

mis-db-ami = {
  delius-mis-dev      = "HMPPS Delius-Core OracleDB master 1576385426"
  delius-auto-test    = "HMPPS OracleDB 11g master 1592301712"
  delius-stage        = "HMPPS Delius-Core OracleDB master 1584247874"
  delius-pre-prod     = "HMPPS Delius-Core OracleDB master 1563079839"
  delius-prod         = "HMPPS Delius-Core OracleDB master 1563079839"
}

misboe-db-ami = {
  delius-mis-dev      = "HMPPS Delius-Core OracleDB master 1576385426"
  delius-auto-test    = "HMPPS OracleDB 11g master 1592301712"
  delius-stage        = "HMPPS Delius-Core OracleDB master 1584247874"
  delius-pre-prod     = "HMPPS Delius-Core OracleDB master 1563079839"
  delius-prod         = "HMPPS Delius-Core OracleDB master 1563079839"
}

misdsd-db-ami = {
  delius-mis-dev      = "HMPPS Delius-Core OracleDB master 1576385426"
  delius-auto-test    = "HMPPS OracleDB 11g master 1592301712"
  delius-stage        = "HMPPS Delius-Core OracleDB master 1584247874"
  delius-pre-prod     = "HMPPS Delius-Core OracleDB master 1563079839"
  delius-prod         = "HMPPS Delius-Core OracleDB master 1563079839"
}
