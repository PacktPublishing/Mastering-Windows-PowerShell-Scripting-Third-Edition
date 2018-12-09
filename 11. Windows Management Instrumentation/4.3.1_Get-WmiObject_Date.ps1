Get-WmiObject Win32_Process -Filter "ProcessId=$PID" | Select-Object Name, CreationDate

# Expects similar to:
#
# Name               CreationDate
# ----               ------------
# powershell_ise.exe 20170209120229.941677+000