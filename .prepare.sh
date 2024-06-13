#!/bin/bash
set -e

# remove scritp artifacts
#rm -fr build.env backend.tf terraform.tfvars

export TF_VAR_environment=${github.ref##refs/heads/}  # Remove leading 'refs/heads/'
export TF_VAR_environment="${TF_VAR_environment:-"develop"}"  # Set default to 'develop' if empty

#TF_VAR_environment="${TF_VAR_environment:-"develop"}"
echo "TF_VAR_environment=$TF_VAR_environment" >> build.env

echo "TF_VAR_environment=$TF_VAR_environment" 
