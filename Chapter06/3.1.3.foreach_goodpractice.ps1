$serviceProcesses = foreach ($service in Get-CimInstance Win32_Service Filter 'State="Running"') {
    Get-Process -Id $service.ProcessId
}