#!/bin/bash
# Script to create a Blob container

storage_account_name="<your_storage_account_name>"
container_name="<your_container_name>"

echo "Creating container: $container_name in $storage_account_name"
az storage container create --name $container_name --account-name $storage_account_name
