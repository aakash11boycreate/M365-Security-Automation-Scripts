# Authenticate with Graph
Connect-AzAccount

# Get active security alerts
$alerts = Get-MgSecurityAlert -Filter "status eq 'active'"

foreach ($alert in $alerts) {
    Write-Host "Active Security Alert: $($alert.Title)"
    Send-MailMessage -To "admin@example.com" -Subject "Security Alert" -Body "Alert: $($alert.Title)"
}
