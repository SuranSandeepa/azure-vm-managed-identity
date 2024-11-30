#!/bin/bash
# Script to create a storage account

resource_group_name="<your_resource_group_name>"
storage_account_name="<your_storage_account_name>"
location="eastus"

echo "Creating storage account: $storage_account_name in $resource_group_name"
az storage account create --name $storage_account_name --resource-group $resource_group_name --location $location --sku Standard_LRS
