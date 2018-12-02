# Requires DemoFunction from 2.11.1

Describe Set-ComputerDescription {
    BeforeAll {
        Mock Set-ItemProperty
        Mock Clear-ItemProperty
        Mock Remove-ItemProperty
    }

    Context 'Description is set' {
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
}