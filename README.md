# Terraform login no Azure
## Local
```BASH
# Shell
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
export ARM_CLIENT_SECRET="12345678-0000-0000-0000-000000000000"
export ARM_TENANT_ID="10000000-0000-0000-0000-000000000000"
export ARM_SUBSCRIPTION_ID="20000000-0000-0000-0000-000000000000"

# Resource Group ID
export ARM_RG_ID="/subscriptions/2213e8b1-dbc7-4d54-8aff-b5e315df5e5b/resourceGroups/811-a208b01a-provide-continuous-delivery-with-gith"
```

```PWSH
# PowerShell
> $env:ARM_CLIENT_ID = "00000000-0000-0000-0000-000000000000"
> $env:ARM_CLIENT_SECRET = "12345678-0000-0000-0000-000000000000"
> $env:ARM_TENANT_ID = "10000000-0000-0000-0000-000000000000"
> $env:ARM_SUBSCRIPTION_ID = "20000000-0000-0000-0000-000000000000"
```
Ou via CLI

```
az login
```

via provider:
```
provider "azurerm" {
  features {}

  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = var.client_secret
  tenant_id       = "10000000-0000-0000-0000-000000000000"
  subscription_id = "20000000-0000-0000-0000-000000000000"
}
```

## Workflow
Variables AZ Login (Microsoft Entra ID and Resource Group) [create a  app Service Principal to get client, secret and tanant id and subscription get in resource group]
- ARM_CLIENT_ID (Application ID)
- ARM_CLIENT_SECRET (Secret)
- ARM_TENANT_ID 
- ARM_SUBSCRIPTION_ID (Resource Group
- ARM_RG_ID (Resource Group ID)
- ARM_RG_NAME (Resource Group Name to Import)
- ARM_RG_LOCATION (Resource Group Location)

### Import Resource Group in Terraform
```
terraform import azurerm_resource_group.rg <Resource ID>
```

### Run Workflow validate and Plan 
- Others Branches (PR)

### Run Workflow validate, Plan and Apply
- main branch
