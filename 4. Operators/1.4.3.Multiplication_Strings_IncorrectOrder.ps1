3 * 'hello'

# Expects error:
#
# Cannot convert value "hello" to type "System.Int32".  Error: "Input string was not in a correct format."
# At line:1 char:2 + 3 * 'hello'
# + ~~~~~~~~~~~
#    + CategoryInfo : InvalidArgument: (:) [], RuntimeException
#    + FullyQualifiedErrorId : InvalidCastFromStringToInteger