class MyClass [
    [String]$Property = 'Hello world'

    [String] ToString() {
        return '{0} on {1}' -f  $this.Property, (Get-Date).ToShortDateString()
    }
    [String] ToString($format) {
        return '{0} on {1}' -f $this.Property, (Get-Date).ToString($format)
    }
}