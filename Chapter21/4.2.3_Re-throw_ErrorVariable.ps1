try {
    throw 'Error'
} catch {
    Write-Error -Exception $_.Exception -ErrorId 'GeneratedErrorId' -Category 'InvalidOperation'
}