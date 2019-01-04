function Test-Error {
    for ($i = 0; $i -lt 5; $i++) {
        Write-Error -Message "Iteration: $i"
    }
}
Test-Error