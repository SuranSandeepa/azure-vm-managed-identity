#!/bin/bash
# Script to fetch access token for Azure Managed Identity

access_token=$(curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fstorage.azure.com%2F' -H Metadata:true | jq -r '.access_token')

echo "Access Token fetched successfully:"
echo $access_token
