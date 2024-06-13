#!/bin/bash
set -e

# remove scritp artifacts
#rm -fr build.env backend.tf terraform.tfvars

export TF_VAR_environment=${{ github.ref == 'refs/heads/main' ? 'production' : github.ref == 'refs/heads/develop' ? 'develop' : 'staging' }}

TF_VAR_environment="${TF_VAR_environment:-"develop"}"
echo "TF_VAR_environment=$TF_VAR_environment" >> build.env

echo "TF_VAR_environment=$TF_VAR_environment" 
