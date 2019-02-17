class MyBaseClass {
    [String]$BaseProperty

    MyBaseClass($value) {
        $this.BaseProperty = $value
    }
}
class MyClass : MyBaseClass {
    MyClass() : base('SomeValue') { }
}
