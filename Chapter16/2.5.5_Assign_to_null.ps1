using namespace System.Text

$stringBuilder = [StringBuilder]::new()
$null = $stringBuilder.AppendFormat('Name: {0}', $service.Name).AppendLine().
                       AppendFormat('Status: {0}', $service.Status).AppendLine().
                       AppendLine()
$stringBuilder.ToString()