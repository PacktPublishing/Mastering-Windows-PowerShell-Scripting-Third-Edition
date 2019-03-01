$ErrorActionPreference = 'Stop'
try {
    Get-ChildItem C:\Windows\System32\Configuration -Filter *.mof | ForEach-Object {
        $content = $_ | Get-Content
    }
} catch [System.IO.FileNotFoundException] {
    Write-Host 'The item was not found'
} catch [System.Management.Automation.ItemNotFoundException] {
    Write-Host 'Access denied'
}