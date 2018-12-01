function Invoke-Something {
    [CmdletBinding()]
    param ( )

    Write-Error 'Error' -ErrorId 'NonTerminating'
}

Describe Invoke-Something {
    It 'Throws a non-terminating error' {
        Invoke-Something -ErrorAction SilentlyContinue -ErrorVariable testError
        $testError.Count | Should -Be 1
        $testError.FullyQualifiedErrorId | Should -Match 'NonTerminating'
    }
}