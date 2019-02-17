$sqlConnection = [System.Data.SqlClient.SqlConnection]::new()
$sqlConnection | Add-Member State -MemberType NoteProperty -Force -Value 'Closed'
$sqlConnection | Add-Member Open -MemberType ScriptMethod -Force -Value {
    $this.State = 'Open'
}