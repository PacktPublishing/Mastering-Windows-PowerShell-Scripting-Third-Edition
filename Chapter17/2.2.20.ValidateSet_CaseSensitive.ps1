function Test-ValidateSet {
    [CmdletBInding()]
    param (
        [ValidateSet('One', 'Two', 'Three', IgnoreCase = $false)]
        [String]$Value
    )
}