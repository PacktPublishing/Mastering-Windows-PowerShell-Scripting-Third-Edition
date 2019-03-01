(Get-Command Set-NetAdapter).Parameters['InputObject'].Attributes |
    Where-Object  TypeId -eq ([PSTypeNameAttribute])