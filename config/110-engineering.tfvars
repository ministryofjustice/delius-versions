## 110-engineering.tfvars

# This config relates to the code needed in the Engineering section of the pipeline.
# example Ops/{env name}/DELIUS

# #Infrastructure Terraform
hmpps-engineering-platform-terraform_ecr = {
  dev = "0.23.0"
}

hmpps-engineering-platform-terraform_jira = {
  dev = "0.23.0"
}

hmpps-engineering-platform-terraform_network = {
  dev  = "0.23.0"
  prod = "0.20.0_VPC-ENG-PROD-DECOMMISIONED"
}

hmpps-engineering-platform-terraform_oracledb = {
  dev  = "0.23.0"
  prod = "0.23.0"
}

hmpps-engineering-platform-terraform_services = {
  dev = "0.23.0"
}

hmpps-engineering-platform-terraform_vpcpeering = {
  dev = "0.23.0"
}

// AMI
bastion-ami = {
  dev  = "HMPPS Base CentOS master 1531754269"
  prod = "HMPPS Base CentOS master 1540227339"
}

oem-ami = {
  dev  = "HMPPS Delius-Core OracleDB master 1569732570"
  prod = "HMPPS Delius-Core OracleDB master 1569732570"
}

rman-catalog-ami = {
  dev  = "HMPPS Delius-Core OracleDB master 1567918453"
  prod = "HMPPS Delius-Core OracleDB master 1567918453"
}
