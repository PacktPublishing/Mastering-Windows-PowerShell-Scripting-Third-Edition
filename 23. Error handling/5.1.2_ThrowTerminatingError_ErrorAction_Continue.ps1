function caller {
    child1
    child2
}
function child1 {
    [CmdletBinding()]
    param ( )

    $errorRecord = [System.Management.Automation.ErrorRecord]::new(
        [Exception]::new('Failed'),
        'ID',
        'OperationStopped',
        $null
    )
    $pscmdlet.ThrowTerminatingError($errorRecord)
    'child1'
}
function child2 {
    'child2'
}