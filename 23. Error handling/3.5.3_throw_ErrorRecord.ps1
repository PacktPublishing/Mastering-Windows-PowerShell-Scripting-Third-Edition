throw [System.Management.Automation.ErrorRecord]::new(
    [InvalidOperationException]::new('Invalid operation'),
    'AnErrorID',
    [System.Management.Automation.ErrorCategory]::InvalidOperation,
    $null
)