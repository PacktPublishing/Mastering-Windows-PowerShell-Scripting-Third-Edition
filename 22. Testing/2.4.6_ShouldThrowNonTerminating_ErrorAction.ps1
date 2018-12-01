function Invoke-Something {
    [CmdletBinding()]
    param ( )

    Write-Error 'Error' -ErrorId 'NonTerminating'
}
Describe Invoke-Something {
    It 'Throws a non-terminating error' {
        { Invoke-Something -ErrorAction SilentlyContinue } | Should -Not -Throw -ErrorId 'NonTerminating'
        { Invoke-Something -ErrorAction Stop } | Should -Throw -ErrorId 'NonTerminating'
    }
}