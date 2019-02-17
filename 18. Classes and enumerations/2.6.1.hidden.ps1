class MyClass {
    [String]$Property

    MyClass() { $this.Initialize() }

    Hidden [Void] Initialize() {
        $this.Property = 'defaultValue'
    }
}