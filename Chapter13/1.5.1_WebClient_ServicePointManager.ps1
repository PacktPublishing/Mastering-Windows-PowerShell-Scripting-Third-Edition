[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
[System.Net.WebClient]::new().DownloadString('https://expired.badssl.com/')