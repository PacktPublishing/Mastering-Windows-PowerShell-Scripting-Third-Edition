function Test-ValidateScript {
    [CmdletBinding()]
    param (
        [ValidateScript({
            if (Test-Path $_ -PathType Leaf) {
                $true
            } else {
                throw 'The path supplied must exist and must be a file'
            }
        })]
        [String]$Path
    )
}