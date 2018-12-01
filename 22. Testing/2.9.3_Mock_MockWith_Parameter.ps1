Describe Subject {
    Mock Get-Date -MockWith {
        [DateTime]::new(2017, 1, 1)
    }
}