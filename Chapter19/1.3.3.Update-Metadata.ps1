Install-Module Configuration -Scope CurrentUser

$params = @{
    Path     = 'C:\workspace\LocalMachine\LocalMachine.psd1'
    Property = 'RootModule'
    Value    = 'LocalMachine.psm1'
}
Update-Metadata @params