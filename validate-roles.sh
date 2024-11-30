#!/bin/bash
# Script to validate role assignments for a VM

resource_group_name="<your_resource_group_name>"
vm_name="<your_vm_name>"

echo "Fetching role assignments for VM: $vm_name"
az role assignment list --assignee $(az vm identity show --resource-group $resource_group_name --name $vm_name --query principalId -o tsv) --query "[].{Role:roleDefinitionName, Scope:scope}" -o table
