function Get-CurrentUser {
    [CmdletBinding(DefaultParameterSetName = 'UsingComputerName')]
    param (
        [Parameter(ParameterSetName = 'UsingComputerName')]
        [String]$ComputerName,

        [Parameter(Mandatory, ParameterSetName = 'UsingCimSession')]
        [CimSession]$CimSession
    )

    (Get-CimInstance Win32_ComputerSystem -Property UserName @psboundparameters).UserName
}