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

    [ComputerDescription] Get() { return $this }

    [Void] Set() { }

    [Boolean] Test() { return $true }
}