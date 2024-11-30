#!/bin/bash
# Script to access Azure Blob Storage using Managed Identity

# Define variables
storage_account_name="<your_storage_account_name>"
container_name="<your_container_name>"
blob_name="<your_blob_name>"
access_token=$1  # Token will be passed as an argument

# Fetch the blob
curl "https://${storage_account_name}.blob.core.windows.net/${container_name}/${blob_name}" \
    -H "x-ms-version: 2017-11-09" \
    -H "Authorization: Bearer ${access_token}"
