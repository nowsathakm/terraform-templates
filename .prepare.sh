#!/bin/bash
set -e

# remove scritp artifacts
#rm -fr build.env backend.tf terraform.tfvars

# ./.prepare.sh (modified line 7)
if [[ "${ENV_NAME}" == "main" ]]; then
  TF_VAR_environment="production"
elif [[ "${ENV_NAME}" == "staging" ]]; then
  TF_VAR_environment="staging"
else
  TF_VAR_environment="develop"
fi

#export TF_VAR_environment=${{ github.ref_name }}  # Remove leading 'refs/heads/'
TF_VAR_environment="${TF_VAR_environment:-"develop"}"  # Set default to 'develop' if empty

#TF_VAR_environment="${TF_VAR_environment:-"develop"}"
echo "TF_VAR_environment=$TF_VAR_environment" >> build.env

echo "TF_VAR_environment=$TF_VAR_environment" 
