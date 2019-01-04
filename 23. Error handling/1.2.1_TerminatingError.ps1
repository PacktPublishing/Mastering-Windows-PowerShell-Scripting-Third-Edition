function WriteError {
    Write-Host 'First'
    Write-Error 'Error'
    Write-Host 'Second'
}

# Expects:
# First
# Expects error:
# WriteError : Error
# Expects:
# Second