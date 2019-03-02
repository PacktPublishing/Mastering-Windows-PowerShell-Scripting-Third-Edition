New-Object System.Text.StringBuilder((Get-Date))

# Expects error:
#
# New-Object : Cannot convert argument "0", with value: "23/01/2017 15:26:59", for "StringBuilder" to type "System.Int32": "Cannot convert value "23/01/2017 15:26:59" to type "System.Int32". Error: "Invalid cast from 'DateTime' to 'Int32'.""
# At line:1 char:1
# + New-Object System.Text.StringBuilder((Get-Date))
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : InvalidOperation: (:) [New-Object], MethodException
#    + FullyQualifiedErrorId : ConstructorInvokedThrowException,Microsoft.PowerShell.Commands.NewObjectCommand
