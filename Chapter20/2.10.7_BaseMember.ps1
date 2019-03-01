$sqlConnection = [System.Data.SqlClient.SqlConnection]::new()
$sqlConnection | Add-Member State -MemberType NoteProperty -Force -Value 'Open'
$sqlConnection.State # Expects Open
$sqlConnection.PSBase.State # Expects Closed
