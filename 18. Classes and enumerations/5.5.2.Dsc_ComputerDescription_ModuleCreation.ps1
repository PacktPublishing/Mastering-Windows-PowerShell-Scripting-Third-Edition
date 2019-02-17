$modulePath = 'C:\Program Files\WindowsPowerShell\Modules'

$params = @{
    Path     = Join-Path $modulePath 'LocalMachine\1.0.0\LocalMachine.psm1'
    ItemType = 'File'
    Force    = $true
}
New-Item @params

$params = @{
    Path                 = Join-Path $modulePath 'LocalMachine\1.0.0\LocalMachine.psd1'
    RootModule           = 'LocalMachine.psm1'
    DscResourcesToExport = 'ComputerDescription'
}
New-ModuleManifest @params