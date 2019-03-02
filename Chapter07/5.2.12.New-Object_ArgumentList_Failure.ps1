[Byte[]]$bytes = 97, 98, 99
$memoryStream = New-Object System.IO.MemoryStream($bytes)

# Expects error:
#
# New-Object : Exception calling ".ctor" with "3" argument(s): "Offset and length were out of bounds for the array or count is greater than the number of elements from index to the end of the source collection."
# At line:2 char:17
# + $memoryStream = New-Object System.IO.MemoryStream($bytes)
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : InvalidOperation: (:) [New-Object], MethodInvocationException
#    + FullyQualifiedErrorId : ConstructorInvokedThrowException,Microsoft.PowerShell.Commands.NewObjectCom mand