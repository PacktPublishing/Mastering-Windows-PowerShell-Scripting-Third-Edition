$script = @'
function Get-CurrentProcess {
    [CmdletBinding()]
    param ( )

    begin { }
    process { }
    end {
        #
        # Get the current process
        #
        Get-Process -Id $PID
     }
}
'@

Invoke-ScriptAnalyzer -ScriptDefinition $script -CustomRulePath .\Rules.psm1

# Expected output:
#
# RuleName                  Severity     ScriptName    Line    Message
# --------                  --------     ----------    ----    -------
# PSAvoidEmptyComments      Information                   9    Empty comment.
# PSAvoidEmptyComments      Information                  11    Empty comment.
# PSAvoidEmptyNamedBlocks   Warning                       5    Empty Begin block.
# PSAvoidEmptyNamedBlocks   Warning                       6    Empty Process block.