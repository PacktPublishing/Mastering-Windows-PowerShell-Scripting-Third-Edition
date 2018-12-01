Mock New-Object -ParameterFilter { $TypeName -eq 'System.IO.FileStream' }
Mock New-Object -ParameterFilter { $TypeName -eq 'System.IO.StreamWriter' } -MockWith {
    [PSCustomObject]@{} |
        Add-Member WriteLine -MemberType ScriptMethod -Value { } -PassThru |
        Add-Member Close -MemberType ScriptMethod -Value { } -PassThru
}