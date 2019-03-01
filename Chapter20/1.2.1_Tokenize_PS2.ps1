$script = @'
# A short script
if ($true) {
    Write-Host 'Hello world'
}
'@
$errors = @()
$tokens = [System.Management.Automation.PSParser]::Tokenize($script, [Ref]$errors)