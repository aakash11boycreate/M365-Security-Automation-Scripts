# Import necessary modules
Import-Module AzureAD

# Authenticate and connect to Microsoft Graph
Connect-AzureAD

# Define a conditional access policy JSON payload
$policy = @{
    displayName = "Block access from untrusted locations"
    conditions = @{
        locations = @{
            includeLocations = @("trusted-location-id")
        }
    }
    grantControls = @{
        builtInControls = @("mfa")
    }
}

# Use Microsoft Graph API to create a new conditional access policy
$graphUrl = "https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies"
Invoke-RestMethod -Uri $graphUrl -Method POST -Body ($policy | ConvertTo-Json) -Headers @{ Authorization = "Bearer $accessToken" }
