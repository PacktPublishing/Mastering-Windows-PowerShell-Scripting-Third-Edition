# Run on Windows after adding the following to C:\ProgramData\ssh\sshd_config:
#
# PubkeyAuthentication yes
# Subsystem    powershell    C:/progra~1/PowerShell/6/pwsh.exe -sshs -NoLogo -NoProfile

$params = @{
    HostName     = 'WindowsSystemNameOrIPAddress'
    UserName     = $env:USERNAME
    SSHTransport = $true
}
Enter-PSSession @params