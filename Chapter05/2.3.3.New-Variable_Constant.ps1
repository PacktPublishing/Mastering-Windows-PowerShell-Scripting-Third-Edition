New-Variable -Name startTime -Value (Get-Date) -Option Constant

$startTime = Get-Date

# Expects error:
#
# Cannot overwrite variable startTime because it is read-only or constant.
# At line:1 char:1 + $startTime = Get-Date
# + ~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : WriteError: (startTime:String) [], SessionStateUnauthorizedAccessException
#    + FullyQualifiedErrorId : VariableNotWritable