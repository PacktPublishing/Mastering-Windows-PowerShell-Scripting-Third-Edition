function Remove-StaleFile {
    param (
        [Parameter(Mandatory = $true)]
        [String]$Path,
        [String]$Filter = '*.*',
        [Int32]$MaximumAge = 90
    )

    Get-ChildItem $Path -Filter $Filter |
        Where-Object LastWriteTime -lt (Get-Date).AddDays(-$MaximumAge) |
        Remove-Item
}