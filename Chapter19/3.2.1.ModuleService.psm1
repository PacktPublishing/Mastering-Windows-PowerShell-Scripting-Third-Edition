function GetModuleServiceConnection {
    [CmdletBinding()]
    param ( )

    $Script:connection
 }

function Connect-ModuleService {
    [CmdletBinding()]
    param (
        [String]$Name
    )

    $Script:connection = $Name
}

$Script:connection = 'DefaultConnection'

Export-ModuleMember -Function Connect-ModuleService