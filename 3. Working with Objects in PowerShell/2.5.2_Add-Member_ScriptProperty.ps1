$empty = New-Object Object
$empty | Add-Member -Name New -Value 'Hello world' -MemberType NoteProperty
$empty | Add-Member -Name Calculated -Value { $this.New.Length } -MemberType ScriptProperty
$empty