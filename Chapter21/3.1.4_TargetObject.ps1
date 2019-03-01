$numerator = 10
$denominator = 0
try {
    $numerator / $denominator
} catch {
    $errorRecord = [System.Management.Automation.ErrorRecord]::new(
        [Exception]::new($_.Exception.Message),
        'InvalidDivision', # ErrorId
        'InvalidOperation', # ErrorCategory
        ([PSCustomObject]@{  # TargetObject
                Numerator   = $numerator
                Denominator = $denominator
            })
    )
    Write-Error -ErrorRecord $errorRecord
}