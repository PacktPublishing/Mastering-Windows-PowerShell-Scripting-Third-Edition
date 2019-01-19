function Invoke-Return {
    process {
        if ($_ -gt 2) {
            return
        }
        $_
    }

    end {
        'All done'
    }
}