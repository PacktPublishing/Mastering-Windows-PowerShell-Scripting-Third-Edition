'*' -match '*'

# Expects error:
#
# parsing "*" - Quantifier {x,y} following nothing.
# At line:1 char:1
# + '*' -match '*'
# + ~~~~~~~~~~~~~~
#    + CategoryInfo : OperationStopped: (:) [], ArgumentException
#    + FullyQualifiedErrorId : System.ArgumentException