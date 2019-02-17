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