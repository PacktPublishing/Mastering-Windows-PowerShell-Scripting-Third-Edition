[Void] Set() {
    $params = @{
        Path = $this.path
        Name = $this.valueName
    }
    if ($this.Ensure -eq 'Present') {
        New-ItemProperty -Value $this.Description -Type String -Force @params
    } else {
        $key = Get-Item $this.Path
        if ($key.GetValueNames() -contains $this.valueName) {
            Remove-ItemProperty @params
        }
    }
}