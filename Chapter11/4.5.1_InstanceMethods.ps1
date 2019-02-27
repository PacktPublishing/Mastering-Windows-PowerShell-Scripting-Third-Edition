$service = Get-WmiObject Win32_Service -Filter "DisplayName='DNS Client'"
$service.StopService()     # Call the StopService method
$service.StartService()    # Call the StartService method