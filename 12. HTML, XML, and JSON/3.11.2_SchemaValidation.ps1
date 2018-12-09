$path = 'C:\Windows\System32\WindowsPowerShell\v1.0\modules\ISE\en-US\ISE-help.xml'

$document = [Xml]::new()
$document.Load($path)

# Add the schema to the XmlDocument
$document.Schemas.Add(
    'http://schemas.microsoft.com/maml/2004/10',
    'C:\Windows\System32\WindowsPowerShell\v1.0\Schemas\PSMaml\maml.xsd'
)

# Validate the document
$ErrorsAndWarnings = [System.Collections.Generic.List[String]]::new()
$document.Validate({
    param ($sender, $eventArgs)

    if ($eventArgs.Severity -in 'Error', 'Warning') {
        $Global:ErrorsAndWarnings.Add($eventArgs.Message)
    }
})