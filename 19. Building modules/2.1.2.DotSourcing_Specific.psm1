# Replaces the content of LocalMachine.psm1

$private = 'GetRegistryValueInfo'
$public = @(
    'Get-ComputerDescription'
    'Remove-ComputerDescription'
    'Set-ComputerDescription'
)

foreach ($item in $private) {
    . '{0}\private\{1}.ps1' -f $psscriptroot, $item
}
foreach ($item in $public) {
    . '{0}\public\{1}.ps1' -f $psscriptroot, $item
}
Export-ModuleMember -Function $public