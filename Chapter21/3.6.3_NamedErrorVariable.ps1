function Invoke-Something {
    [CmdletBinding()]
    param ( )

    Write-Error 'Failed'
}
Invoke-Something -ErrorVariable InvokeError -ErrorAction SilentlyContinue