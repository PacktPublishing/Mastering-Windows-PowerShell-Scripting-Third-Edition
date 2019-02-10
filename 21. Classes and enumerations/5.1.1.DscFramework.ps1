enum Ensure {
    Absent
    Present
}

[DscResource()]
class MyResource {
    [DscProperty(Key)]
    [Ensure]$Ensure

    [MyResource] Get() { return $this }

    [Void] Set() { }

    [Boolean] Test() { return $true }
}