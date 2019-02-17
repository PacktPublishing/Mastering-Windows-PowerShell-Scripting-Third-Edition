function StopError {
    [CmdletBinding()]
    param ( )

    Write-Error 'Something went wrong'
}

# Expects error:
# StopError -ErrorAction Stop
# StopError : Something went wrong
# At line:1 char:1
# + StopError -ErrorAction Stop
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~
# + CategoryInfo : NotSpecified: (:) [Write-Error], WriteErrorException
# + FullyQualifiedErrorId : Microsoft.PowerShell.Commands.WriteErrorException,StopError