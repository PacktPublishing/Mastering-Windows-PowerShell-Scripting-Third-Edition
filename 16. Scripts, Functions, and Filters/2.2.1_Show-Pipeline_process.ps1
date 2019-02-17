function Show-Pipeline {
    begin {
        $position = $myinvocation.PipelinePosition
        Write-Host "Pipeline position ${position}: Start"
    }

    process {
        Write-Host "Pipeline position ${position}: $_"
        $_
    }
}