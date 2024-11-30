#!/bin/bash
# Script to create a resource group in Azure

resource_group_name="<your_resource_group_name>"
location="eastus"

echo "Creating resource group: $resource_group_name in $location"
az group create --name $resource_group_name --location $location
