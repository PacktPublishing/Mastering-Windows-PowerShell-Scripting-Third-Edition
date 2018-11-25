Describe LessThanAndGreaterThan {
    It 'BeLessThan is -lt' {
        1 | Should -BeLessThan 2
    }

    It 'BeLessThanOrEqualTo is -le' {
        1 | Should -BeLessOrEqual 1
    }

    It 'BeGreaterThan is -gt' {
        2 | Should -BeGreaterThan 1
    }

    It 'BeGreaterThanOrEqualTo is -ge' {
        1 | Should -BeGreaterOrEqual 1
    }
}

# Expected output:
# Describing LessThanAndGreaterThan
#   [+] BeLessThan is -lt 27ms
#   [+] BeLessThanOrEqualTo is -le 13ms
#   [+] BeGreaterThan is -gt 7ms
#   [+] BeGreaterThanOrEqualTo is -ge 11ms