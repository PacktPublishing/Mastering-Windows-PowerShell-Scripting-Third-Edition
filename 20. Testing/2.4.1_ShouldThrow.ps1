function Invoke-Something {
    throw
}

Describe Invoke-Something {
    It 'Throws a terminating error' {
        { Invoke-Something } | Should Throw
    }
}