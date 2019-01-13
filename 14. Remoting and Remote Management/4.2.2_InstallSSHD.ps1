# Run on Windows. Assumes openssh was previously installed using chocolatey.

& "C:\Program Files\OpenSSH-Win64\install-sshd.ps1"
Start-Service sshd