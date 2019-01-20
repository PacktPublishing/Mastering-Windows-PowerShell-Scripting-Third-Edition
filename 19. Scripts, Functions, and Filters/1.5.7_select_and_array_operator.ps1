Get-NetAdapter | Select-Object @(
    'Name'
    'Status'
    'MacAddress'
    @{ Name = 'LinkSpeed'; Expression = { Format-LinkSpeed $_.TransmitLinkSpeed }}
    @{ Name = 'IPAddress'; Expression = { ($_ | Get-NetIPAddress).IPAddress }}
)