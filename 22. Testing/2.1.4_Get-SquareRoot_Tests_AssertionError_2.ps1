Describe Get-SquareRoot {
    It 'Returns simple square root values' {
        Get-Squareroot 1 | Should -Be 1
        Get-SquareRoot 4 | Should -Be 2
        Get-SquareRoot 9 | Should -Be 33
        Get-SquareRoot 16 | Should -Be 44
    }
}

# Expected output:
# Describing Get-SquareRoot
#   [-] Returns simple square root values 30ms
#     Expected 33, but got 3.0000000000000000000000000000.
#     5:         Get-SquareRoot 9 | Should -Be 33