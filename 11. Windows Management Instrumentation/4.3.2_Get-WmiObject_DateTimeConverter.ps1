Get-WmiObject Win32_Process -Filter "ProcessId=$PID" |
    Select-Object Name, @{Name='CreationDate'; Expression={
        [System.Management.ManagementDateTimeConverter]::ToDateTime($_.CreationDate)
    }}