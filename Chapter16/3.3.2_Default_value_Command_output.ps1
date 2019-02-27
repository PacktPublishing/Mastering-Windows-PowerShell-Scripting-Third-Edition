# Will not run in the console as-is. Needs to be in a .ps1 file, or wrapped by function.
param (
    [String]$ProcessName = (Get-Process -Id $PID | Select-Object -ExpandProperty Name)
)