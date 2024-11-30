#!/bin/bash
# Combined script to fetch token and access Blob Storage

# Fetch token
access_token=$(curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fstorage.azure.com%2F' -H Metadata:true | jq -r '.access_token')
echo "Token fetched successfully."

# Define variables
storage_account_name="<your_storage_account_name>"
container_name="<your_container_name>"
blob_name="<your_blob_name>"

# Fetch blob
curl "https://${storage_account_name}.blob.core.windows.net/${container_name}/${blob_name}" \
    -H "x-ms-version: 2017-11-09" \
    -H "Authorization: Bearer ${access_token}"
