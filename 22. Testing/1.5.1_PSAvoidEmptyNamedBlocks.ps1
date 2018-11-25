using namespace Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic
using namespace System.Management.Automation.Language


function PSAvoidEmptyNamedBlocks {
    <#
    .SYNOPSIS
        PSAvoidEmptyNamedBlocks
    .DESCRIPTION
        Functions and scripts should not contain empty begin, process, end, or declarations.
    #>

    [CmdletBinding()]
    [OutputType([Microsoft.Windows.PowerShell.ScriptAnalyzer.Generic.DiagnosticRecord])]
    param (
        # An AST node.
        [NamedBlockAst]$ast
    )

    if ($ast.Statements.Count -eq 0) {
        [DiagnosticRecord]@{
            Message  = 'Empty {0} block.' -f $ast.BlockKind
            Extent   = $ast.Extent
            RuleName = $myinvocation.MyCommand.Name
            Severity = 'Warning'
        }
    }
}