# Requires DemoFunction from 2.10.8

Describe Invoke-SqlQuery {
    BeforeAll {
        Mock New-Object -ParameterFilter { $TypeName -eq 'System.Data.SqlClient.SqlDataAdapter' } -MockWith {
            [System.Data.SqlClient.SqlDataAdapter]::new() |
                Add-Member Fill -MemberType ScriptMethod -Force -PassThru -Value {
                    $null = $args[0].Columns.Add('ColumnName')
                    $row = $args[0].NewRow()
                    $row.ColumnName = 'value'
                    $args[0].Rows.Add($row)

                    $args[0].Rows.Count
                }
        }

        $defaultParams = @{
            Query      = 'SELECT * FROM Table1'
            Connection = [System.Data.SqlClient.SqlConnection]::new() |
                Add-Member State -MemberType NoteProperty -Force -PassThru -Value { 'Closed' } |
                Add-Member Open -MemberType ScriptMethod -Force -PassThru -Value { $this.State = 'Open'  } |
                Add-Member Close -MemberType ScriptMethod -Force -PassThru -Value { $this.State = 'Closed' }
        }
    }

    It 'Executes a query and returns the results' {
        $output = Invoke-SqlQUery @defaultParams

        $output.Rows.Count | Should -Be 1
        $output[0].ColumnName | Should -Be 'value'
    }

    Context 'Error handling' {
        BeforeAll {
            $contextParams = $defaultParams.Clone()
            $contextParams.Connection = $contextParams.Connection |
                Add-Member Open -MemberType ScriptMethod -Force -PassThru -Value { throw 'Connection failed' }
        }

        It 'When the connection fails, throws an error' {
            { Invoke-SqlQUery @contextParams } | Should -Throw 'Connection failed'
        }
    }
}