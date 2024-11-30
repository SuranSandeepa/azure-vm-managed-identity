#!/bin/bash
# Script to upload a file to a Blob container

storage_account_name="<your_storage_account_name>"
container_name="<your_container_name>"
file_path="<path_to_your_file>"

echo "Uploading file: $file_path to container: $container_name"
az storage blob upload --account-name $storage_account_name --container-name $container_name --file $file_path --name $(basename $file_path)
