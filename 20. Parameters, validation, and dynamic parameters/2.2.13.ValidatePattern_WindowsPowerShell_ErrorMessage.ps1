function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern('^[A-Z]\S+ [A-Z]\S+\.', Options = 'None')]
        [String]$Greeting
    )
}
Test-ValidatePattern -Greeting 'hello Jim.'

# Expects error:
#
# Test-ValidatePattern : Cannot validate argument on parameter 'Greeting'. The argument "hello Jim." does not match the "^[A-Z]\S+ [A-Z]\S+\." pattern. Supply an argument that matches "^[A-Z]\S+ [A-Z]\S+\." and try the command again.
# At line:1 char:34
# + Test-ValidatePattern -Greeting 'hello Jim.'
# + ~~~~~~~~~~~~
#     + CategoryInfo : InvalidData: (:) [Test-ValidatePattern], ParameterBindingValidationException
#     + FullyQualifiedErrorId : ParameterArgumentValidationError,Test-ValidatePattern