class MyBaseClass {
    [String]$BaseProperty

    MyBaseClass() {
        Write-Host 'Executing base constructor'
        $this.BaseProperty = 'baseValue'
    }
}
class MyClass : MyBaseClass {
    [String]$Property

    MyClass() : base() {
        Write-Host 'Executing child constructor'
        $this.Property = 'value'
    }
}