Describe Be {
    It 'Be tests equality' {
        0 | Should -Be 0
        $true | Should -Be $true
        @(1, 2, 3) | Should -Be @(1, 2, 3)
    }

    It 'BeExactly is case sensitive' {
        'A' | Should -BeExactly 'A'
    }
}

# Expected output:
# Describing Be
#   [+] Be tests equality 32ms
#   [+] BeExactly is case sensitive 12ms