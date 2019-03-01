$hashtable = @{
    Key1 = 'Value1'
    Key2 = 'Value2'
}
foreach ($key in $hashtable.Keys) {
    $hashtable.Remove($key)
}

# Expects error:
#
# Collection was modified; enumeration operation may not execute.
# At line:5 char:10
# + foreach ($key in $hashtable.Keys) {
# + ~~~~
#    + CategoryInfo : OperationStopped: (:) [], InvalidOperationException
#    + FullyQualifiedErrorId : System.InvalidOperationException