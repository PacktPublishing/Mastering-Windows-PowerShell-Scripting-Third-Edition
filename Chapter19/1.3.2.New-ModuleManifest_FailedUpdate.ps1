$path = 'C:\workspace\LocalMachine\LocalMachine.psd1'
$manifest = Import-PowerShellDataFile -Path 'C:\workspace\LocalMachine\LocalMachine.psd1'
$manifest.FunctionsToExport = '*'
New-ModuleManifest -Path 'C:\workspace\LocalMachine\LocalMachine-new.psd1' @manifest