$Global:VariableName = 'Value'
$executionContext.SessionState.Module.OnRemove = {
    if (Test-Path variable:VariableName) {
        Remove-Variable VariableName -Scope Global
    }
}