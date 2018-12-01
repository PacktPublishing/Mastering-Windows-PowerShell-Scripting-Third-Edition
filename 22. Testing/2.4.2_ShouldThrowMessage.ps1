function Invoke-Something {
    throw 'an error'
}

Describe Invoke-Something {
    It 'Throws a terminating error' {
        { Invoke-Something } | Should Throw 'an error'
    }
}