class MyClass {
    [String]$Property

    MyClass() {
        $this.Property = 'Hello world'
    }

    [String] ToString() {
        return $this.Property
    }
}