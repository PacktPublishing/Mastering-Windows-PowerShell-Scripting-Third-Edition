function Set-ComputerDescription {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [AllowEmptyString()]
        [String]$Description
    )

    $erroractionpreference = 'Stop'

    try {
        $path = 'HKLM:\System\CurrentControlSet\Services\LanmanServer\Parameters'

        if ((Get-Item $path).GetValue('srvcomment') -ne $Description) {
            if ($Description) {
                Set-ItemProperty $path -Name 'srvcomment' -Value $Description
            } else {
                Remove-ItemProperty $path -Name 'srvcomment'
            }
        }
    } catch {
        throw
    }
}
