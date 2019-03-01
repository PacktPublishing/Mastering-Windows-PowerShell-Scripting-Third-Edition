function SilentError {
    [CmdletBinding()]
    param ( )

    Write-Error 'Something went wrong'
}
SilentError -ErrorAction SilentlyContinue