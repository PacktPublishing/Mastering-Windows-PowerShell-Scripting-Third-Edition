$myArray[0 + 6..8 + -1]

# Expects error:
#
# Method invocation failed because [System.Object[]] does not contain a method named 'op_Addition'.
# At line:1 char:1 + $myArray[0 + 6..8 + -1]
# + ~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : InvalidOperation: (op_Addition:String) [], RuntimeException
#    + FullyQualifiedErrorId : MethodNotFound