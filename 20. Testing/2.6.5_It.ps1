It 'Removes all files older than 90 days' {
    Remove-StaleFile $Path
    "stale.*" | Should -Not -Exist
    "new.*" | Should -Exist
}

It 'Removes all <Extension> files older than 90 days' -TestCases (
    $extensions | ForEach-Object { @{ Extension = $_ } }
) {
    param ( $Extension )

    Remove-StaleFile $Path -Filter "*$Extension"
    "stale$Extension" | Should -Not -Exist
    "stale.*" | Should -Exist
    "new.*" | Should -Exist
}