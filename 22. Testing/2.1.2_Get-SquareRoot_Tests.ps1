Describe Get-SquareRoot {
    It 'Returns a square root of 0 for a value of 0' {
        Get-SquareRoot 0 | Should -Be 0
    }

    It 'Returns simple square root values' {
        Get-Squareroot 1 | Should -Be 1
        Get-SquareRoot 4 | Should -Be 2
        Get-SquareRoot 9 | Should -Be 3
        Get-SquareRoot 16 | Should -Be 4
    }
}

# Expected output:
# Describing Get-SquareRoot
#   [+] Returns a square root of 0 for a value of 0 43ms
#   [+] Returns simple square root values 12ms
