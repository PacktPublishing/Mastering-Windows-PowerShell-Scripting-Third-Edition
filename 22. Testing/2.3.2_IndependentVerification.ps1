Describe Get-SquareRoot {
    It 'Calculates the square root of <Value> to be <ExpectedResult>' -TestCases @(
            @{ Value = 81;           ExpectedResult = [Math]::Sqrt(81) }
            @{ Value = 9801;         ExpectedResult = [Math]::Sqrt(9801) }
            @{ Value = 3686400;      ExpectedResult = [Math]::Sqrt(3686400) }
            @{ Value = 212255761;    ExpectedResult = [Math]::Sqrt(212255761) }
            @{ Value = 475316482624; ExpectedResult = [Math]::Sqrt(475316482624) }
    ) {
        param (
            $Value,
            $ExpectedResult
        )

        Get-SquareRoot $Value | Should -Be $ExpectedResult
    }
}