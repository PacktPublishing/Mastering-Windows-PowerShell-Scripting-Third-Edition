Describe Get-OperatingSystemName {
    BeforeAll {
        Mock Get-CimInstance {
            [PSCustomObject]@{
                Caption = 'OSName'
            }
        }
    }

    It 'Gets the name of the operating system' {
        Get-OperatingSystemName | Should -Be 'OSName'
        Assert-MockCalled Get-CimInstance
    }
}