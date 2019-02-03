function First { return $null }
First | Second

# Expects error:
#
# Second : Cannot bind argument to parameter 'InputObject' because it is null.
#  At line:1 char:9
#  + First | Second
#  + ~~~~~~
#  + CategoryInfo : InvalidData: (:) [Second], ParameterBindingValidationException
#  + FullyQualifiedErrorId : ParameterArgumentValidationErrorNullNotAllowed,Second