#!/bin/bash
set -e

# remove scritp artifacts
#rm -fr build.env backend.tf terraform.tfvars

# ./.prepare.sh (modified line 7)
if [[ $github.ref == 'refs/heads/main' ]]; then
  export TF_VAR_environment="production"
elif [[ $github.ref == 'refs/heads/staging' ]]; then
  export TF_VAR_environment="staging"
else
  export TF_VAR_environment="develop"
fi

#export TF_VAR_environment=${{ github.ref_name }}  # Remove leading 'refs/heads/'
#TF_VAR_environment="${TF_VAR_environment:-"develop"}"  # Set default to 'develop' if empty

#TF_VAR_environment="${TF_VAR_environment:-"develop"}"
echo "TF_VAR_environment=$TF_VAR_environment" >> build.env

echo "TF_VAR_environment=$TF_VAR_environment" 
