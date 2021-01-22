## delius.tfvars

# This config relates to the code needed in the DELIUS section of the pipeline.
# example DAMS/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-delius-core-terraform = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test = "3.25.0"

  delius-int           = "3.25.0"
  delius-mis-dev       = "3.25.0"
  delius-test          = "3.25.0"
  delius-po-test1      = "3.25.0"
  delius-perf          = "3.25.0"
  delius-stage         = "3.25.0"
  delius-training-test = "3.25.0"
  delius-training      = "3.24.0"
  delius-pre-prod      = "3.24.0"
  delius-prod          = "3.24.0"
}

delius-core-hmpps-env-configs = {
  # delius-core-dev      = "" # force to default to branch
  # delius-core-sandpit  = "" # force to default to branch
  delius-auto-test = "1.411.0"

  delius-int           = "1.412.0"
  delius-mis-dev       = "1.412.0"
  delius-test          = "1.412.0"
  delius-po-test1      = "1.412.0"
  delius-perf          = "1.411.0"
  delius-stage         = "1.411.0"
  delius-training-test = "1.412.0"
  delius-training      = "1.411.0"
  delius-pre-prod      = "1.411.0"
  delius-prod          = "1.411.0"
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

delius-core-weblogic-ami = {
  delius-core-dev      = "HMPPS Delius-Core Weblogic-Admin master 1611244063" # January 21, 2021 at 3:50:30 PM UTC
  delius-core-sandpit  = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-auto-test     = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-int           = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-mis-dev       = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-test          = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-po-test1      = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-perf          = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-stage         = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-training-test = "HMPPS Delius-Core Weblogic-Admin master 1611244063"
  delius-training      = "HMPPS Delius-Core Weblogic-Admin master 1608564976" # December 21, 2020 at 3:38:56 PM UTC
  delius-pre-prod      = "HMPPS Delius-Core Weblogic-Admin master 1608564976"
  delius-prod          = "HMPPS Delius-Core Weblogic-Admin master 1608564976"
}

delius-core-ldap-ami = {
  delius-core-dev      = "HMPPS Base CentOS master 1609773202" # January 4, 2021 at 3:22:13 PM UTC
  delius-core-sandpit  = "HMPPS Base CentOS master 1609773202"
  delius-auto-test     = "HMPPS Base CentOS master 1609773202"
  delius-int           = "HMPPS Base CentOS master 1609773202"
  delius-mis-dev       = "HMPPS Base CentOS master 1609773202"
  delius-test          = "HMPPS Base CentOS master 1609773202"
  delius-po-test1      = "HMPPS Base CentOS master 1609773202"
  delius-perf          = "HMPPS Base CentOS master 1609773202"
  delius-stage         = "HMPPS Base CentOS master 1609773202"
  delius-training-test = "HMPPS Base CentOS master 1609773202"
  delius-training      = "HMPPS Base CentOS master 1609773202"
  delius-pre-prod      = "HMPPS Base CentOS master 1609773202"
  delius-prod          = "HMPPS Base CentOS master 1609773202"
}

delius-core-haproxy-ami = {
  delius-core-dev      = "HMPPS Base CentOS master 1609773202" # January 4, 2021 at 3:22:13 PM UTC
  delius-core-sandpit  = "HMPPS Base CentOS master 1609773202"
  delius-auto-test     = "HMPPS Base CentOS master 1609773202"
  delius-int           = "HMPPS Base CentOS master 1609773202"
  delius-mis-dev       = "HMPPS Base CentOS master 1609773202"
  delius-test          = "HMPPS Base CentOS master 1609773202"
  delius-po-test1      = "HMPPS Base CentOS master 1609773202"
  delius-perf          = "HMPPS Base CentOS master 1609773202"
  delius-stage         = "HMPPS Base CentOS master 1609773202"
  delius-training-test = "HMPPS Base CentOS master 1609773202"
  delius-training      = "HMPPS Base CentOS master 1609773202"
  delius-pre-prod      = "HMPPS Base CentOS master 1609773202"
  delius-prod          = "HMPPS Base CentOS master 1609773202"
}