# Requires DemoFunction from 2.11.1

Describe Set-ComputerDescription {
    BeforeAll {
        Mock Set-ItemProperty
        Mock Clear-ItemProperty
        Mock Remove-ItemProperty
    }

    Context 'Description is not set' {
        BeforeAll {
            Mock Get-Item {
                [PSCustomObject]@{} | Add-Member GetValue -MemberType ScriptMethod -Value { '' }
           }
        }

        It 'When the description differs, sets a new value' {
            Set-ComputerDescription -Description 'New description'
            Assert-MockCalled Set-ItemProperty -Scope It
            Assert-MockCalled Remove-ItemProperty -Times 0 -Scope It
        }

        It 'When the description matches, does nothing' {
            Set-ComputerDescription -Description ''
            Assert-MockCalled Set-ItemProperty -Times 0 -Scope It
            Assert-MockCalled Remove-ItemProperty -Times 0 -Scope It
        }
    }

    Context 'Description is set' {
        BeforeAll {
            Mock Get-Item {
                [PSCustomObject]@{} | Add-Member GetValue -MemberType ScriptMethod -Value {
                    return 'Current description'
                }
            }
        }

        It 'When the description differs, sets a new value' {
            Set-ComputerDescription -Description 'New description'
            Assert-MockCalled Set-ItemProperty -Scope It
        }

        It 'When the description matches, does nothing' {
            Set-ComputerDescription -Description 'Current description'
            Assert-MockCalled Set-ItemProperty -Times 0 -Scope It
            Assert-MockCalled Remove-ItemProperty -Times 0 -Scope It
        }

        It 'When the description is empty, removes the value' {
            Set-ComputerDescription -Description ''
            Assert-MockCalled Remove-ItemProperty -Times 1 -Scope It
        }
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