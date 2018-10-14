# Get the value of the environment variable
$environmentVariable = [Environment]::GetEnvironmentVariable('PSMODULEPATH', 'User')
# If it is not set, use the User default path
if (-not $environmentVariable) {
    $environmentVariable = "$home\Documents\WindowsPowerShell\Modules"
}
# Add a new path
$paths = "$environmentVariable;C:\SomeNewModulePath"
# Set the environment variable
[Environment]::SetEnvironmentVariable('PSMODULEPATH', $paths, 'User')