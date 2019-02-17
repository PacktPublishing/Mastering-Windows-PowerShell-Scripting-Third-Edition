# Requires Windows 8 or greater

(Get-Command Set-NetAdapter).Parameters['InputObject'].ParameterType.Name

# Expects output:
# CimInstance[]

(Get-Command Set-NetAdapter).Parameters['InputObject'].Attributes.
    Where{ $_.TypeId -match 'PSType' }.PSTypeName

# Expects output:
# Microsoft.Management.Infrastructure.CimInstance#MSFT_NetAdapter