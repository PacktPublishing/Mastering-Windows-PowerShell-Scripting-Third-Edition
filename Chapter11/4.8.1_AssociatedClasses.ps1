Get-WmiObject Win32_LogonSession | ForEach-Object {
    [PSCustomObject]@{
        LogonName      = $_.GetRelated('Win32_Account').Caption
        SessionStarted = [System.Management.ManagementDateTimeConverter]::ToDateTime($_.StartTime)
    }
}