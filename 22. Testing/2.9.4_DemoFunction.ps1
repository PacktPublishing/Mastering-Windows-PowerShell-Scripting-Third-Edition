function Get-OperatingSystemName {
    (Get-CimInstance Win32_OperatingSystem).Caption
}