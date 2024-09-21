# Authenticate with Microsoft Graph
Connect-AzAccount

# Get the secure score
$secureScore = Get-MgSecuritySecureScore | Select-Object -First 1
$threshold = 80  # Set a threshold for the secure score

if ($secureScore.Score -lt $threshold) {
    Send-MailMessage -To "admin@example.com" -Subject "Secure Score Alert" -Body "Your Secure Score is below $threshold. Immediate action is required."
}

# Output the score
Write-Host "Current Secure Score: $($secureScore.Score)"
