class MyClass {
    [String]$FirstProperty
    [String]$SecondProperty

    MyClass()                                { $this.Initialize() }
    MyClass([String]$First)                  { $this.Initialize($First) }
    MyClass([String]$First, [String]$Second) { $this.Initialize($First, $Second) }

    [Void] Initialize()               { $this.Initialize('DefaultFirst', 'DefaultSecond') }
    [Void] Initialize([String]$First) { $this.Initialize($First, 'DefaultSecond') }

    [Void] Initialize([String]$First, [String]$Second) {
        $this.FirstProperty = $First
        $this.SecondProperty = $Second
    }
}