#!/bin/bash
set -e
aws eks update-kubeconfig --name 'dev-eks-cluster'
helm uninstall jom 
terraform -chdir='jom_tfm/tfm/dev' destroy -target='module.eks' -var='account_id=798011338410' -auto-approve
echo 
echo Resources decommissioned.
echo