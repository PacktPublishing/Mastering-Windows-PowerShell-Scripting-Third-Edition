$script = @'
# A short script
if ($true) {
    Write-Host 'Hello world'
}
'@
$tokens = $errors = @()
$ast = [System.Management.Automation.Language.Parser]::ParseInput(
    $script,
    [Ref]$tokens,
    [Ref]$errors
)