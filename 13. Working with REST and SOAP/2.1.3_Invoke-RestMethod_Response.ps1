Invoke-RestMethod -Uri https://api.github.com/search/code -Body @{
    q = 'Get-Content language:powershell repo:powershell/powershell'
} | Select-Object -ExpandProperty items | Select-Object number, title