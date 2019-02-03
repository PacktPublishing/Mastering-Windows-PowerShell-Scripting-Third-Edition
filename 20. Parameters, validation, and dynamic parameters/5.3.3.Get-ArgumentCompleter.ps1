$localPipeline = [PowerShell].Assembly.GetType('System.Management.Automation.Runspaces.LocalPipeline')
$getExecutionContextFromTLS = $localPipeline.GetMethod(
    'GetExecutionContextFromTLS',
    [System.Reflection.BindingFlags]'Static, NonPublic'
)
$internalExecutionContext = $getExecutionContextFromTLS.Invoke(
    $null,
    [System.Reflection.BindingFlags]'Static, NonPublic',
    $null,
    $null,
    $psculture
)
$customArgumentCompletersProperty = $internalExecutionContext.GetType().GetProperty(
    'CustomArgumentCompleters',
    [System.Reflection.BindingFlags]'NonPublic, Instance'
)
$customArgumentCompletersProperty.GetGetMethod($true).Invoke(
    $internalExecutionContext,
    [System.Reflection.BindingFlags]'Instance, NonPublic, GetProperty',
    $null,
    @(),
    $psculture
)