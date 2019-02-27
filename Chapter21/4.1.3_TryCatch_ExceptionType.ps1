$ErrorActionPreference = 'Stop'
try {
    # If the file does not exist, this will raise an exception of type ItemNotFoundException
    $content = Get-Content C:\doesnotexist.txt
} catch [System.Management.Automation.ItemNotFoundException] {
    Write-Host 'The item was not found'
}