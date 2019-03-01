function Invoke-Something {
    $errorRecord = [System.Management.Automation.ErrorRecord]::new(
        [InvalidOperationException]::new('an error'),
        'AUniqueErrorID',
        'OperationStopped',
        $null
    )
    throw $errorRecord
}

Describe Invoke-Something {
    It 'Throws a terminating error' {
        { Invoke-Something } | Should -Throw -ErrorId 'AUniqueErrorId'
    }
}