$params = @{
    Path              = 'C:\workspace\LocalMachine\LocalMachine.psd1'
    RootModule        = 'LocalMachine.psm1'
    ModuleVersion     = '1.0.0'
    FunctionsToExport = 'Get-ComputerDescription', 'Set-ComputerDescription'
}
New-ModuleManifest @params