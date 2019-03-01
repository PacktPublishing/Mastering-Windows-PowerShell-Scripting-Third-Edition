[Int32[]]$myNumbers = 1, 2, $null, "A string"

# Expects error:
#
# Cannot convert value "A string" to type "System.Int32". Error: "Input string was not in a correct format."
# At line:1 char:1
# + [Int32[]]$myNumbers = 1, 2, $null, "A string"
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : MetadataError: (:) [], ArgumentTransformationMetadataException
#    + FullyQualifiedErrorId : RuntimeException