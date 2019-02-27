$sqlConnection = New-MockObject System.Data.SqlClient.SqlConnection
$sqlConnection.Open()

# Expected error:
# Exception calling "Open" with "0" argument(s): "Object reference not set to an instance of an object."