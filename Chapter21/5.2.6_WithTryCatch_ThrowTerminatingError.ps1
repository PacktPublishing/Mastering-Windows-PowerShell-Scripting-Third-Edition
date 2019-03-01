function Invoke-Something {
    [CmdletBinding()]
    param ( )

    try {
        throw 'Error'
        Write-Host 'No error'
    } catch {
        $pscmdlet.ThrowTerminatingError($_)
    }
}
Invoke-Something -ErrorAction SilentlyContinue

# Expects error:
# Invoke-Something : Error
# At line:12 char:1
# + Invoke-Something -ErrorAction SilentlyContinue
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# + CategoryInfo : OperationStopped: (Error:String) [Invoke-Something], RuntimeException
# + FullyQualifiedErrorId : Error,Invoke-Something