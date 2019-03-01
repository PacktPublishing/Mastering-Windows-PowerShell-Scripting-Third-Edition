[ComputerDescription] Get() {
    $computerDescription = @{}

    $key = Get-Item $this.Path
    if ($key.GetValueNames() -contains $this.valueName) {
        $computerDescription.Ensure = 'Present'
        $computerDescription.Description = $key.GetValue($this.valueName)
    } else {
        $computerDescription.Ensure = 'Absent'
    }
    return $computerDescription
}