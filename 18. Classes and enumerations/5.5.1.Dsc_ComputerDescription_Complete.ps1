enum Ensure {
    Absent
    Present
}

[DscResource()]
class ComputerDescription {
    [DscProperty(Key)]
    [Ensure]$Ensure

    [DscProperty()]
    [String]$Description

    Hidden [String] $path = 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'
    Hidden [String] $valueName = 'svrcomment'

    [ComputerDescription] Get() {
        $key = Get-Item $this.Path
        if ($key.GetValueNames() -contains $this.valueName) {
            $this.Ensure = 'Present'
            $this.Description = $key.GetValue($this.valueName)
        } else {
            $this.Ensure = 'Absent'
        }
        return $this
    }

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

    [Boolean] Test() {
        $key = Get-Item $this.Path
        if ($this.Ensure -eq 'Present') {
            if ($key.GetValueNames() -notcontains $this.valueName) {
                return $false
            }
            return $key.GetValue($this.valueName) -eq $this.Description
        } else {
            return $key.GetValueNames() -notcontains $this.valueName
        }
        return $true
    }
}