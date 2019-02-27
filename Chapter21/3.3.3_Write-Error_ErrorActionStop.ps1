function Test-Error {
    [CmdletBinding()]
    param ( )

    for ($i = 0; $i -lt 5; $i++) {
        Write-Error -Message "Iteration: $i"
    }
}

Test-Error -ErrorAction Stop

# Expects error:
# Test-Error : Iteration: 0
# At line:1 char:1
# + Test-Error -ErrorAction Stop
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# + CategoryInfo : NotSpecified: (:) [Write-Error], WriteErrorException
# + FullyQualifiedErrorId : Microsoft.PowerShell.Commands.WriteErrorException,Test-Error