function Test-ValidatePattern {
    [CmdletBinding()]
    param (
        [ValidatePattern(
           '^[A-Z]\S+ [A-Z]\S+\.',
           Options      = 'None',
           ErrorMessage = 'The greeting and name must begin with a capital letter.'
        )]
       [String]$Greeting
    )
}