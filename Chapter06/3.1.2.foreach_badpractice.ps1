$serviceProcesses = @()

foreach ($service in Get-CimInstance Win32_Service -Filter 'State="Running"') {
    $serviceProcesses += Get-Process -Id $service.ProcessId
}