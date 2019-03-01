[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [String]$Password
)

$Credential = [PSCredential]::new(
    '.\user',
    ($Password | ConvertTo-SecureString -AsPlainText -Force)
)
$Credential.GetNetworkCredential().Password