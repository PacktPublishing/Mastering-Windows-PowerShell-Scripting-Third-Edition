$hashtable = @{"Existing", "Value0"}
$hashtable.Add("Existing", "Value1")

# Expects error:
#
# Exception calling "Add" with "2" argument(s): "Item has already been added. Key in dictionary: 'Existing' Key being added: 'Existing'"
# At line:2 char:1 + $hashtable.Add("Existing", "Value1")
# + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     + CategoryInfo : NotSpecified: (:) [], MethodInvocationException
#     + FullyQualifiedErrorId : ArgumentException