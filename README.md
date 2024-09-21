# M365-Security-Automation-Scripts
Automation scripts for managing Microsoft 365 security and compliance tasks using PowerShell and Microsoft Graph API.
# M365 Security and Compliance Automation Scripts

This repository contains PowerShell scripts for automating common Microsoft 365 security and compliance tasks, including managing conditional access policies, monitoring the secure score, automating privileged identity management (PIM), and security alert notifications.

## Features

- **Conditional Access Policy Automation**: Automate the creation and management of conditional access policies.
- **Secure Score Monitoring**: Fetch M365 secure scores and send email alerts if the score is below a defined threshold.
- **PIM Role Management**: Automate the assignment and approval of Privileged Identity Management roles.
- **Security Alerts**: Automatically monitor and send notifications for any active security alerts.

## Prerequisites

- **PowerShell 5.1** or higher.
- **Azure PowerShell Module (`Az`)**.
- **AzureAD Module**.
- **Permissions**: Your account needs sufficient privileges to manage security policies in M365.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/M365-Security-Automation-Scripts.git
