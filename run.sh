#!/usr/bin/env bash

set -e

#Usage
# Scripts takes four (4) arguments:
# 1) environment_name : eg same as the env's config file name delius-core-dev delius-perf alfresco-dev
# 2) action | ACTION_TYPE: task to complete example plan apply test clean
# 3) component | eg vpc security-groups application (name of subdir where resources are defined in Terraform)
# 4*) optional AWS_TOKEN: token to use when running locally eg hmpps-token

# continue function for debugging
stop_go() {
  read -p "Continue [Y] or Exit script? " -n 1 -r
  echo # (optional) move to a new line
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
  fi
}

# Error handler function
exit_on_error() {
  exit_code=$1
  last_command=${@:2}
  if [ $exit_code -ne 0 ]; then
    echo >&2 "\"${last_command}\" command failed with exit code ${exit_code}."
    exit ${exit_code}
  fi
}

terragrunt_exit_on_error() {
  exit_code=$1
  last_command=${@:2}
  if [ $exit_code -ne 0 ] && [ $exit_code -ne 2 ]; then
    echo >&2 "\"${last_command}\" command failed with exit code WTF! ${exit_code}."
    exit ${exit_code}
  fi

  if [ $exit_code -eq 0 ] && [ $exit_code -eq 2 ]; then
    echo >&2 "\"${last_command}\" DOES THIS EVER RUN?! ${exit_code}."
    exit 0
  fi
}

cleanUp() {
  echo "cleanUp"
  echo "${ENVIRONMENT_NAME}"
  if [[ -f "${tfstate}" ]]; then
    if grep --quiet "${ENVIRONMENT_NAME}" "${tfstate}"; then
      echo "state for env"
    else
      echo "not state for env - cleaning up"
      rm -rf "${baseDir}/${COMPONENT}/.terraform"
      sleep 5
    fi
  fi
}

ENVIRONMENT_NAME=${1}
ACTION_TYPE=${2}
COMPONENT=${3}
AWS_TOKEN=${4}

baseDir=$(pwd)

tfstate="${baseDir}/${COMPONENT}/.terraform/terraform.tfstate"

# echo "You start with $# positional parameters"
# # Loop until all parameters are used up
# COUNTER=0
# while [ "${1}" != "" ]; do

#     COUNTER=$[COUNTER + 1]
#     echo "Parameter ${COUNTER} equals \"${1}\""
#     #echo "You now have $# positional parameters"

#     # Shift all the parameters down by one
#     shift
# done

# stop_go

if [ -z "${ENVIRONMENT_NAME}" ]; then
  echo "ENVIRONMENT_NAME argument not supplied, please provide an argument!"
  exit 1
fi

echo "Output -> ENVIRONMENT_NAME set to: ${ENVIRONMENT_NAME}"

if [ -z "${ACTION_TYPE}" ]; then
  echo "ACTION_TYPE argument not supplied."
  echo "--> Defaulting to plan ACTION_TYPE"
  ACTION_TYPE="plan"
fi

echo "Output -> ACTION_TYPE set to: ${ACTION_TYPE}"

if [ -z "${COMPONENT}" ]; then
  echo "COMPONENT argument not supplied."
  echo "--> Defaulting to common component"
  COMPONENT="common"
fi

if [ ! -z "${AWS_TOKEN}" ]; then
  AWS_TOKEN="${AWS_TOKEN}"
  TOKEN_ARGS="-e AWS_PROFILE=${AWS_TOKEN}"
  echo "Output -> AWS_TOKEN set to: ${AWS_TOKEN}"
  echo "Output ---> input stage complete"
fi

# set properties file to source
env_config_dir="${baseDir}/config/${ENVIRONMENT_NAME}.properties"

# # Commands

runCmd="docker run -it --rm -v $(pwd):/home/tools/data \
    -v ${HOME}/.aws:/home/tools/.aws \
    -v $(pwd)/run.sh:/home/tools/run.sh \
    ${TOKEN_ARGS} \
    -e RUNNING_IN_CONTAINER=True \
    mojdigitalstudio/hmpps-terraform-builder-0-12:latest sh /home/tools/run.sh ${ENVIRONMENT_NAME} ${ACTION_TYPE} ${COMPONENT}"

#check env vars for RUNNING_IN_CONTAINER switch
if [[ ${RUNNING_IN_CONTAINER} == True ]]; then
  echo "Output -> environment stage"
  source "${baseDir}/config/${ENVIRONMENT_NAME}.properties"
  exit_on_error $? !!
  if [[ ${RUNNING_IN_AWSCODEBUILD} == True ]]; then
    unset TERRAGRUNT_IAM_ROLE
  fi
  echo "Output ---> set environment stage complete for ${ENVIRONMENT_NAME}"
  ACTION_TYPE="docker-${ACTION_TYPE}"
  cd ${COMPONENT}
  echo "Output -> Component Container working Dir: $(pwd)"
fi

case ${ACTION_TYPE} in
container)
  echo "Running container action"
  cleanUp
  echo "Docker command: ${runCmd}"
  ${runCmd} container
  exit_on_error $? !!
  ;;
docker-container)
  echo "Running docker container action"
  exit_on_error $? !!
  bash
  exit_on_error $? !!
  ;;
plan)
  echo "Running plan action"
  cleanUp
  echo "Docker command: ${runCmd}"
  ${runCmd} plan
  exit_on_error $? !!
  ;;
docker-plan)
  echo "Running docker plan action"
  #terragrunt plan -detailed-exitcode --out ${ENVIRONMENT_NAME}.plan
  terragrunt plan --out ${ENVIRONMENT_NAME}.plan
  terragrunt_exit_on_error $?
  ;;
apply)
  echo "Running apply action"
  cleanUp
  exit_on_error $? !!
  ${runCmd} apply
  exit_on_error $? !!
  ;;
docker-apply)
  echo "Running docker apply action"
  terragrunt apply ${ENVIRONMENT_NAME}.plan
  terragrunt_exit_on_error $?
  ;;
destroy)
  echo "Running destroy action"
  cleanUp
  exit_on_error $? !!
  ${runCmd} destroy
  exit_on_error $? !!
  ;;
docker-destroy)
  echo "Running docker destroy action"
  terragrunt destroy -force
  terragrunt_exit_on_error $? !!
  ;;
output)
  echo "Running output action"
  cleanUp
  exit_on_error $? !!
  ${runCmd} output
  exit_on_error $? !!
  ;;
docker-output)
  echo "Running docker apply action"
  terragrunt output
  terragrunt_exit_on_error $?
  ;;
*)
  echo "${ACTION_TYPE} is not a valid argument. init - apply - test - output - destroy"
  ;;
esac
