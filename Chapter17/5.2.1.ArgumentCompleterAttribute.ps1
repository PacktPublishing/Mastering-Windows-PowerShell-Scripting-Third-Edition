function Test-ArgumentCompleter {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ArgumentCompleter( {
            param ( $commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter )

            $possibleValues = 'Start', 'Stop', 'Create', 'Delete'
            $possibleValues | Where-Object { $_ -like "$wordToComplete*" }
        } )]
        $Action
    )
}