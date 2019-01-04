function Invoke-Something {
    [CmdletBinding()]
    param ( )

    try {
        throw 'Error'
        Write-Host 'No error'
    } catch {
        Write-Host 'An error occurred'
    }
}
Invoke-Something -ErrorAction SilentlyContinue

# Expected output:
# An error occurred