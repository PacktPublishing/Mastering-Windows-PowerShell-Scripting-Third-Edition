# Requires DemoFunction

Describe Remove-StaleFile {
    BeforeAll {
        $extensions = '.txt', '.log', '.doc'
        $Path = 'C:\Temp\StaleFiles'
        $null = New-Item $Path -ItemType Directory
        Push-Location $Path
    }

    AfterAll {
        Pop-Location
        Remove-Item C:\Temp\StaleFiles -Recurse -Force
    }

    BeforeEach {
        foreach ($extension in $extensions) {
            $item = New-Item "stale$extension" -ItemType File -Force
            $item.LastWriteTime = (Get-Date).AddDays(-92)
        }
        foreach ($extension in $extensions) {
            $item = New-Item "new$extension" -ItemType File -Force
            $item.LastWriteTime = (Get-Date).AddDays(-88)
        }
    }

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
}