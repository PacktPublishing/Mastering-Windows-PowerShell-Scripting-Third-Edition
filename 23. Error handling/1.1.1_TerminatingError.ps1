function ThrowError {
    Write-Host 'First'
    throw 'Error'
    Write-Host 'Second'
}
ThrowError

# Expected output:
# First
# Expected error
# throw 'Error'