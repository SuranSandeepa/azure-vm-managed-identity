#!/bin/bash
# Script to assign the Storage Blob Data Owner role to a Managed Identity

resource_group_name="<your_resource_group_name>"
vm_name="<your_vm_name>"
role="Storage Blob Data Owner"
scope="/subscriptions/<your_subscription_id>/resourceGroups/$resource_group_name/providers/Microsoft.Storage/storageAccounts/<your_storage_account_name>"

echo "Assigning role: $role to VM: $vm_name"
az role assignment create --assignee $(az vm identity show --resource-group $resource_group_name --name $vm_name --query principalId -o tsv) --role "$role" --scope "$scope"
