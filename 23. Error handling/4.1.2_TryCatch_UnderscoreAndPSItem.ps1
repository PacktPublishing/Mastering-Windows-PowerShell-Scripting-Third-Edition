try {
    $null.ToString()
} catch {
    Write-Host $_.Exception.Message      # This is the same as...
    Write-Host $PSItem.Exception.Message # ... this.
}