class MyBaseClass {
    [String] ToString() { return 'default' }
}
class MyClass : MyBaseClass {
    [String] ToString() { return 'new' }
}