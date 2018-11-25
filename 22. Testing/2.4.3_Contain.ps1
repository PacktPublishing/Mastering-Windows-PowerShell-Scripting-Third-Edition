Describe Contain {
    It 'Contain tests array content' {
        'Tom', 'Richard', 'Harry' | Should -Contain 'Tom'
    }
}

# Expected output:
# Describing BeIn
#   [+] Contain tests array content 45ms