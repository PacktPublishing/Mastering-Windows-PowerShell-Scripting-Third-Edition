Describe TestPathMocking {
    BeforeAll {
        Mock Test-Path { $false } -ParameterFilter { $Path -eq 'C:\' }
    }

    It 'Uses the mock' {
        Test-Path 'C:\' | Should -Be $false
    }

    It 'Uses the real command' {
        Test-Path 'C:\Windows' | Should -Be $true
    }
}