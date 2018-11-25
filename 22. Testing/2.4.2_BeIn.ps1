Describe BeIn {
    It 'BeIn tests array content' {
        'Harry' | Should -BeIn 'Tom', 'Richard', 'Harry'
    }
}

# Expected output:
# Describing BeIn
#   [+] BeIn tests array content 32ms