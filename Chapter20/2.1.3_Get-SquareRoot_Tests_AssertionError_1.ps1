Describe Get-SquareRoot {
    It 'Returns simple square root values' {
        Get-SquareRoot 9 | Should -Be 1
    }
}

# Expected output:
# Describing Get-SquareRoot
#   [-] Returns simple square root values 30ms
#     Expected 1, but got 3.0000000000000000000000000000.
#     3:         Get-SquareRoot 9 | Should -Be 1