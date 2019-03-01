function Get-Substring {
    param (
        [String]$String,

        [Int]$Start,

        [Int]$Length = ($String.Length - $Start)
    )

    $String.Substring($Start, $Length)
}