# Create the body
$body = '<h1>Services</h1>'
$body += Get-Service |
    Where-Object Status -eq 'Running' |
    ConvertTo-Html -Property Name, DisplayName -Fragment
$body += '<h1>Processes</h1>'
$body +=  Get-Process |
    Where-Object WorkingSet -gt 50MB |
    ConvertTo-Html -Property Name, Id, WorkingSet-Fragment
# Create a document with the merged body
ConvertTo-Html -Body $body -Title Report | Set-Content report.html