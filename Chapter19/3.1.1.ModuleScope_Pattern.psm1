function Connect-Service {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]$Server
    )

    $Script:connection = [PSCustomObject]@{
        Server = $Server
       PSTypeName = 'ServiceConnectionInfo'
    }
}

function Get-ServiceConnection {
    [CmdletBinding()]
    param ( )

    if ($Script:connection) {
        $Script:connection
    } else {
        throw [InvalidOperationException]::new('Not connected to the service')
    }
}

function Get-ServiceObject {
    [CmdletBinding()]
    param (
        [PSTypeName('ServiceConnectionInfo')]
        $Connection = (Get-ServiceConnection)
    )
}