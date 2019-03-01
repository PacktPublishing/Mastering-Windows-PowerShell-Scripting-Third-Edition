function Invoke-Something {
    [CmdletBinding()]
    param ( )

    $errorRecord = [System.Management.Automation.ErrorRecord]::new(
        [InvalidOperationException]::new('Failed'),
        'AnErrorID',
        [System.Management.Automation.ErrorCategory]::OperationStopped,
        $null
    )
    $pscmdlet.ThrowTerminatingError($errorRecord)
}