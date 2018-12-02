# Requires DemoFunction from 2.10.12

Describe Get-CurrentUser {
    Context 'Using a CIM session' {
        BeforeAll {
            Mock Get-CimInstance -ParameterFilter { $CimSession } -MockWith {
               [PSCustomObject]@{ UserName = 'UserFromCimSession' }
            }
        }

        It 'When a CimSession is defined, passes the CimSession to Get-CimInstance' {
            Get-CurrentUser -CimSession (New-MockObject CimSession) |
                Should -Be 'UserFromCimSession'
        }
    }
}