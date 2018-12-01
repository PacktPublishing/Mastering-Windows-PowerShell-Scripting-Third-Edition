# Requires DemoFunction

Describe Write-File {
    BeforeAll {
        Mock New-Object -ParameterFilter { $TypeName -eq 'System.IO.FileStream' }
        Mock New-Object -ParameterFilter { $TypeName -eq 'System.IO.StreamWriter' } -MockWith {
            [PSCustomObject]@{} |
                Add-Member WriteLine -MemberType ScriptMethod -PassThru -Value {
                    $Script:WriteLine = $args[0]
                } |
                Add-Member Close -MemberType ScriptMethod -PassThru -Value {
                    $Script:Close = $true
                }
        }
    }

    BeforeEach {
        $Script:WriteLine = ''
        $Script:Close = $false
    }

    It 'Creates a file stream' {
        Write-File

        Assert-MockCalled New-Object -ParameterFilter { $TypeName -eq 'System.IO.FileStream' }
        Assert-MockCalled New-Object -ParameterFilter { $TypeName -eq 'System.IO.StreamWriter' }
    }

    It 'Writes a line and closes the file stream' {
        Write-File

        $Script:WriteLine | Should -Be 'Hello world'
        $Script:Close | Should -Be $true
    }
}