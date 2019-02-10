class MyClass {
    [String]$Property

    MyClass() {
        $this.Property = 'Hello world'
    }

    MyClass([String]$greeting) {
        $this.Property = $greeting
    }
}