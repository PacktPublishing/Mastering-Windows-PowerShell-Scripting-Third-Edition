# Run on Linux.

$params = @{
    HostName     = 'WindowsSystemNameOrIPAddress'
    UserName     = $env:USERNAME
    SSHTransport = $true
    KeyFilePath  = '~\.ssh\id_rsa'
}
Enter-PSSession @params