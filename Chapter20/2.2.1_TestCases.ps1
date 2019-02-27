Describe Get-SquareRoot {
    It 'Calculates the square root of <Value> to be <ExpectedResult>' -TestCases @(
        @{ Value = 1;  ExpectedResult = 1 }
        @{ Value = 4;  ExpectedResult = 2 }
        @{ Value = 9;  ExpectedResult = 33 }
        @{ Value = 16; ExpectedResult = 44 }
    ) {
        param (
            $Value,
            $ExpectedResult
        )

        Get-SquareRoot $Value | Should -Be $ExpectedResult
    }
}

# Expected output
# Describing Get-SquareRoot
#   [+] Calculates the square root of 1 to be 1 52ms
#   [+] Calculates the square root of 4 to be 2 7ms
#   [-] Calculates the square root of 9 to be 33 10ms
#     Expected 33, but got 3.0000000000000000000000000000.
#     10: Get-SquareRoot $Value | Should -Be $ExpectedResult
#   [-] Calculates the square root of 16 to be 44 13ms
#     Expected 44, but got 4.000000000000000000000000000.
#     10: Get-SquareRoot $Value | Should -Be $ExpectedResult