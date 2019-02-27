# Requires DemoFunction from 2.11.1

Describe Set-ComputerDescription {
    BeforeAll {
        Mock Set-ItemProperty
        Mock Clear-ItemProperty
        Mock Remove-ItemProperty
    }

    Context 'Error handling' {
        BeforeAll {
            Mock Set-ItemProperty { Write-Error -Message 'Non-terminating error' }
        }

        It 'When Set-ItemProperty throws, raises a terminating error' {
            { Set-ComputerDescription -Description 'New description' } | Should Throw
        }
    }
}