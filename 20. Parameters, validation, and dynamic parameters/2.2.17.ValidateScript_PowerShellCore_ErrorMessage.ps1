function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript(
            { Test-Path $_ -PathType Leaf },
            ErrorMessage = 'The path supplied must exist and must be a file'
        )]
        [String]$Path
    )
}