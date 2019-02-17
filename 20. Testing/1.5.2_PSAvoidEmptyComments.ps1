using namespace Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic
using namespace System.Management.Automation.Language


function PSAvoidEmptyComments {
    [CmdletBinding()]
    [OutputType([Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord])]
    param (
        [Token[]]$token
    )

    $ruleName = $myinvocation.MyCommand.Name
    $token.Where{ $_.Kind -eq 'Comment' -and $_.Text.Trim() -eq '#' }.ForEach{
        [DiagnosticRecord]@{
            Message  = 'Empty comment.'
            Extent   = $_.Extent
            RuleName = $ruleName
            Severity = 'Information'
        }
    }
}