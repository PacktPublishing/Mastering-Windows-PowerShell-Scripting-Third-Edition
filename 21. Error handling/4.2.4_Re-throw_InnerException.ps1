try {
    throw 'Error'
} catch {
    $exception = New-Object Exception(
        $_.Exception.Message,
        $_.Exception
    )
    Write-Error -Exception $exception -ErrorId 'GeneratedErrorId' -Category 'InvalidOperation'
}