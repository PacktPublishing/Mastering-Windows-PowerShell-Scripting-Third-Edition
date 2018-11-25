Describe Match {
    It 'Match is -match' {
        'Value' | Should -Match 'v*'
    }

    It 'BeMatchExactly is -cmatch' {
        'Value' | Should -MatchExactly 'V*'
    }
}

# Expected output:
# Describing Match
#   [+] Match is -match 28ms
#   [+] BeMatchExactly is -cmatch 24ms