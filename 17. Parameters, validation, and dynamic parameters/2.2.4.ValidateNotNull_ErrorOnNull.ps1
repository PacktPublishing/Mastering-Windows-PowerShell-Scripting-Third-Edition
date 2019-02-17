Test-ValidateNotNull -Parameter1 $null

# Expects error:
#
# Test-ValidateNotNull : Cannot validate argument on parameter 'Parameter1'. The argument is null. Provide a valid value for the argument, and then try running the command again.
#  At line:1 char:34
#  + Test-ValidateNotNull -Parameter1 $null
#  + ~~~~~
#  + CategoryInfo : InvalidData: (:) [Test-ValidateNotNull], ParameterBindingValidationException
#  + FullyQualifiedErrorId : ParameterArgumentValidationError,Test-ValidateNotNull