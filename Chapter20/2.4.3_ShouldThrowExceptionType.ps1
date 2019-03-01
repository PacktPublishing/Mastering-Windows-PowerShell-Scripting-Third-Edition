function Invoke-Something {
    param (
       $value
    )

    if ($value -isnot [Int32]) {
        throw [ArgumentException]::new('The value must be an integer')
    }
    if ($value -ge 100) {
        throw [ArgumentOutOfRangeException]::new('The value must be less than 100')
    }
}

Describe Invoke-Something {
    It 'When the value is not an integer, throws an ArgumentException' {
         { Invoke-Something -Value none } | Should -Throw -ExceptionType ArgumentException
    }

    It 'When the value is greater or equal to 100, throws an ArgumentOutOfRange exception' {
         { Invoke-Something -Value 100 } | Should -Throw -ExceptionType ArgumentOutOfRangeException
    }
}