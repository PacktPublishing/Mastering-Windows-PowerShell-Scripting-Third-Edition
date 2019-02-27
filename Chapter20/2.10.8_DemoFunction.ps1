function Invoke-SqlQuery {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]$Query,

        [Parameter(Mandatory)]
        [System.Data.SqlClient.SqlConnection]$Connection
    )

    try {
        $Connection.Open()

        $sqlCommand = $Connection.CreateCommand()
        $sqlCommand.CommandText = $Query

        $sqlDataAdapter = New-Object System.Data.SqlClient.SqlDataAdapter($sqlCommand)

        $dataTable = New-Object System.Data.DataTable
        Write-Verbose $sqlDataAdapter.Fill($dataTable)

        ,$dataTable
    } catch {
        $pscmdlet.ThrowTerminatingError($_)
    } finally {
        if ($Connection.State -eq 'Open') {
            $Connection.Close()
        }
    }
}