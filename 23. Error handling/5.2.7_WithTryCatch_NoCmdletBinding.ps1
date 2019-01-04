function Invoke-Something {
    throw 'Error'
    Write-Host 'No error'
}
$ErrorActionPreference = 'SilentlyContinue'
Invoke-Something

# Expected output:
# No error