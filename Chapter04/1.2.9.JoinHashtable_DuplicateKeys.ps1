@{key1 = 1} + @{key1 = 2}

# Expects error:
#
# Item has already been added. Key in dictionary: 'key1' Key being added:
# 'key1' At line:1 char:1
# + @{key1 = 1} + @{key1 = 2}
# + ~~~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo : OperationStopped: (:) [], ArgumentException#
#    + FullyQualifiedErrorId : System.ArgumentException
