function New-DnsZone {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]$Name
    )

    $params = @{
        Name             = $Name
        DynamicUpdate    = 'Secure'
        ReplicationScope = 'Domain'
    }
    if (-not (Get-DnsServerZone $Name -ErrorAction SilentlyContinue)) {
        Add-DnsServerPrimaryZone @params
    }
}