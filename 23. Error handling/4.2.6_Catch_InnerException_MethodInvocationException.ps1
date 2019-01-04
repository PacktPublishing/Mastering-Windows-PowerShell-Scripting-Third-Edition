[DateTime]::DaysInMonth(2019, 13)

# Expects error:
# Exception calling "DaysInMonth" with "2" argument(s): "Month must be between one and twelve.
# Parameter name: month"
# At line:1 char:2
# + [DateTime]::DaysInMonth(2019, 13)
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  + CategoryInfo : NotSpecified: (:) [], MethodInvocationException
#  + FullyQualifiedErrorId : ArgumentOutOfRangeException