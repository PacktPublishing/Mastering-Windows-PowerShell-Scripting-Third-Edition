using namespace System.Text

$stringBuilder = [StringBuilder]::new()
$stringBuilder.AppendFormat('Name: {0}', $service.Name).AppendLine().
               AppendFormat('Status: {0}', $service.Status).AppendLine().
               AppendLine() | Out-Null
$stringBuilder.ToString()