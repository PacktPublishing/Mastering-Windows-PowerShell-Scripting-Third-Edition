# Run on Windows after adding the following to C:\ProgramData\ssh\sshd_config:
#
# PubkeyAuthentication yes
# Subsystem    powershell    C:/progra~1/PowerShell/6/pwsh.exe -sshs -NoLogo -NoProfile

Restart-Service sshd