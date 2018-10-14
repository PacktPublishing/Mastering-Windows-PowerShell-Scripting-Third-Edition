$environmentVariable = [Environment]::GetEnvironmentVariable('PSMODULEPATH', 'User')
# Remove the value from the string
$environmentVariable -replace ';C:\\SomeNewModulePath'
# If the is just the default
if ($environmentVariable -eq "$home\Documents\WindowsPowerShell\Modules") {
    # Remove the User environment variable
    [Environment]::SetEnvironmentVariable('PSMODULEPATH', $null, 'User')
} else {
    # Otherwise put back the original value
    [Environment]::SetEnvironmentVariable('PSMODULEPATH', $environmentVariable, 'User')
}