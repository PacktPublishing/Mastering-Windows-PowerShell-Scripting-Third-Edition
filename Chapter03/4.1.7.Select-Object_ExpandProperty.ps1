Get-ChildItem C:\ | Select-Object -ExpandProperty FullName
Get-ChildItem $env:SYSTEMROOT\*.dll | Select-Object Name, Length -ExpandProperty VersionInfo