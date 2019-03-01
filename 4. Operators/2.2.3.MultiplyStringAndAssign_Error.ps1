$variable = 'one'
$variable *= 'one'

# Expects error:
#
# Cannot convert value "one" to type "System.Int32". Error: "Input string was not in a correct format."
# At line:2 char:1 + $variable *= 'one'
# + ~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : InvalidArgument: (:) [], RuntimeException
#    + FullyQualifiedErrorId : InvalidCastFromStringToInteger