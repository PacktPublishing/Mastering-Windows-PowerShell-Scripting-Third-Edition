Describe Like {
    It 'BeLike is -like' {
        'Value' | Should -BeLike 'v*'
    }

    It 'BeExactlyLike is -clike' {
        'Value' | Should -BeLikeExactly 'V*'
    }
}

# Expected output:
# Describing Like
#   [+] BeLike is -like 28ms
#   [+] BeExactlyLike is -clike 13ms